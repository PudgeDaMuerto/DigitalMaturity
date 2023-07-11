import random

from bokeh.plotting import figure, curdoc
from bokeh.embed import components
from bokeh.models import HoverTool, ColumnDataSource

ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890-_"


def generate_secret_code(length):
    code_list = []
    for i in range(length):
        code_list.append(ALPHABET[random.randint(0, len(ALPHABET)-1)])

    return "".join(code_list)


def create_bar(x, y, names, title='', x_title='', y_title='', lines=None):
    curdoc().theme = 'dark_minimal'

    plot = figure(x_range=x, title=title, x_axis_label=x_title, y_axis_label=y_title, width=100, height=30)
    curdoc().add_root(plot)
    bar_data = {'x': x, 'y': y, 'names': names}
    source = ColumnDataSource(bar_data)
    plot.vbar(x='x', top='y', source=source, fill_color='#8e81c8', line_color="#685590", width=.4)

    if lines:
        for line in lines:
            line_data = {'x': x, 'y': line[0], 'names': [line[1] for _ in x]}
            line_source = ColumnDataSource(line_data)
            plot.line(x='x', y='y', color="red", line_width=2, source=line_source)

    tools = HoverTool(tooltips=[("Id", "@x"), ("Name", "@names"), ("Res", "@y")])
    plot.add_tools(tools)
    plot.sizing_mode = 'scale_width'

    script, div = components(plot)

    return script, div
