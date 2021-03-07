function autocomplet() {
    var min_length = 1;
    var keyword = $('#cfuncionario').val();

    if (keyword.length >= min_length) {
        $.ajax({
            url: "php/cfuncionario.php",
            type: 'POST',
            data: {keyword: keyword},
            success:function(data){
                console.log(data);
                $("#cfuncionario").autocomplete({
                    source: data
                });
            }
        });
    }
}
.space
import PySimpleGUI as sg
import calendar

class Calendario():
    def __init__(self):
        pass

    layout = [
        [sg.Text('Digite o ano:', size = (30,1))],
        [sg.Input(size = (30,1), key = 'year')],
        [sg.Button('Print')]
    ]
    
    janela = sg.Window('Calendário', layout)
    
    def Iniciar(self):
        while True:
            evento, valores = self.janela.read()
            if evento == sg.WINDOW_CLOSED:
                break

            if evento == 'Print':
                print(self.PrintCalendar(valores))


    def PrintCalendar(self, valores):
        ano = int(valores['year'])
        self.year = calendar.calendar(ano)

    
cal = Calendario()
cal.Iniciar()
