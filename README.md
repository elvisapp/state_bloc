# state_bloc

Utilizando o pacote flutter_bloc para gerenciar o estado. 
A aplicação apresenta um texto que alterna ao pressionar um botão.

Como Funciona
TextCubit: Classe que estende Cubit<TextState> e gerencia o estado do texto e sua cor.

BlocProvider: Utiliza-se BlocProvider para fornecer a instância de TextCubit para a aplicação.

BlocBuilder: Escuta as mudanças no estado e atualiza a UI de acordo.
