//by Bruno Cubateli, 2018
clear;clc;

f=figure('figure_position',[-8,-8],'figure_size',[1936,1056],'auto_resize','on','background',[33],'figure_name','Aerofólio NACA');

delmenu(f.figure_id,gettext('File'))
delmenu(f.figure_id,gettext('?'))
delmenu(f.figure_id,gettext('Tools'))
toolbar(f.figure_id,'off')
handles.dummy = 0;
handles.textTitulo=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[60],'FontUnits','points','FontWeight','bold','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2737787,0.8813208,0.4843633,0.1192453],'Relief','default','SliderStep',[0.01,0.1],'String','Aerofólio NACA','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','textTitulo','Callback','')
handles.textCodigo=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[20],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0316462,0.6998113,0.2156981,0.0754717],'Relief','default','SliderStep',[0.01,0.1],'String','Tipo de código NACA','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','textCodigo','Callback','')
handles.textAerofolio=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[20],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0316462,0.6072408,0.2156981,0.0754717],'Relief','default','SliderStep',[0.01,0.1],'String','Código NACA do aerofólio (MPXX)','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','textAerofolio','Callback','')
handles.textPontos=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[20],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0316462,0.5120998,0.2156981,0.0754717],'Relief','default','SliderStep',[0.01,0.1],'String','Número de pontos','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','textPontos','Callback','')
handles.textGrade=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[20],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0316462,0.4195293,0.2156981,0.0754717],'Relief','default','SliderStep',[0.01,0.1],'String','Tipo de grade','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','textGrade','Callback','')
handles.textBordo=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[20],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0316462,0.3269589,0.2156981,0.0754717],'Relief','default','SliderStep',[0.01,0.1],'String','Bordo de fuga','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','textBordo','Callback','')
handles.textPlotar=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[20],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0316462,0.2343884,0.2156981,0.0754717],'Relief','default','SliderStep',[0.01,0.1],'String','Plotar como','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','textPlotar','Callback','')
handles.pushPlotar=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[25],'FontUnits','points','FontWeight','bold','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0566462,0.0711897,0.1656981,0.0829741],'Relief','default','SliderStep',[0.01,0.1],'String','PLOTAR AEROFÓLIO','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pushPlotar','Callback','pushPlotar_callback(handles)')
handles.textPronto=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[20],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0416462,0.0059091,0.4056981,0.0481818],'Relief','default','SliderStep',[0.01,0.1],'String','Defina os parâmetros e clique em PLOTAR AEROFÓLIO','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','textPronto','Callback','')
handles.radioLinha=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[20],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.1416462,0.1637602,0.2156981,0.0535294],'Relief','default','SliderStep',[0.01,0.1],'String','Mostrar linha de curvatura média','Style','radiobutton','Value',[1],'VerticalAlignment','middle','Visible','on','Tag','radioLinha','Callback','radioLinha_callback(handles)')
handles.editAerofolio=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[20],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2634686,0.6072408,0.1856981,0.0754717],'Relief','default','SliderStep',[0.01,0.1],'String','0012','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','editAerofolio','Callback','editAerofolio_callback(handles)')
handles.popCodigo=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[20],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2634686,0.6998113,0.1856981,0.0754717],'Relief','default','SliderStep',[0.01,0.1],'String','NACA 4 dígitos|NACA 5 dígitos','Style','popupmenu','Value',[1],'VerticalAlignment','middle','Visible','on','Tag','popCodigo','Callback','popCodigo_callback(handles)')
handles.editPontos=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[20],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2634686,0.5120998,0.1856981,0.0754717],'Relief','default','SliderStep',[0.01,0.1],'String','100','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','editPontos','Callback','editPontos_callback(handles)')
handles.popGrade=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[20],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2634686,0.4195293,0.1856981,0.0754717],'Relief','default','SliderStep',[0.01,0.1],'String','Uniforme|Não uniforme','Style','popupmenu','Value',[1],'VerticalAlignment','middle','Visible','on','Tag','popGrade','Callback','popGrade_callback(handles)')
handles.popBordo=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[20],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2634686,0.3269589,0.1856981,0.0754717],'Relief','default','SliderStep',[0.01,0.1],'String','Aberto|Fechado','Style','popupmenu','Value',[1],'VerticalAlignment','middle','Visible','on','Tag','popBordo','Callback','popBordo_callback(handles)')
handles.popPlotar=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[20],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2634686,0.2343884,0.1856981,0.0754717],'Relief','default','SliderStep',[0.01,0.1],'String','Linha|Círculos|Pontos','Style','popupmenu','Value',[1],'VerticalAlignment','middle','Visible','on','Tag','popPlotar','Callback','popPlotar_callback(handles)')
handles.pushSair=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[25],'FontUnits','points','FontWeight','bold','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.903125,0.0140086,0.0869792,0.0700431],'Relief','default','SliderStep',[0.01,0.1],'String','SAIR','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pushSair','Callback','pushSair_callback(handles)')
handles.pushLimpar=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','off','FontAngle','normal','FontName','Tahoma','FontSize',[25],'FontUnits','points','FontWeight','bold','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2684686,0.0711897,0.1756981,0.0829741],'Relief','default','SliderStep',[0.01,0.1],'String','LIMPAR GRÁFICO','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pushLimpar','Callback','pushLimpar_callback(handles)')
handles.plotAerofolio=newaxes();handles.plotAerofolio.margins = [ 0 0 0 0]; handles.plotAerofolio.axes_bounds = [0.4601042,0.1368534,0.5305208,0.6346983];
handles.textLingua=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[20],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0316462,0.8446703,0.2156981,0.0354717],'Relief','default','SliderStep',[0.01,0.1],'String','Escolha sua língua','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','textLingua','Callback','')
handles.textLanguage=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[20],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0316462,0.8146703,0.2156981,0.0354717],'Relief','default','SliderStep',[0.01,0.1],'String','Choose your language','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','textLanguage','Callback','')
handles.textLangue=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[20],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0316462,0.7846703,0.2156981,0.0354717],'Relief','default','SliderStep',[0.01,0.1],'String','Choisissez votre langue','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','textLangue','Callback','')
handles.popLingua=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[20],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2634686,0.7846703,0.1856981,0.0954717],'Relief','default','SliderStep',[0.01,0.1],'String','Português|English|Français','Style','popupmenu','Value',[1],'VerticalAlignment','middle','Visible','on','Tag','popLingua','Callback','popLingua_callback(handles)')
handles.textExportar=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[20],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.5770221,0.0800158,0.1270425,0.0594494],'Relief','default','SliderStep',[0.01,0.1],'String','Exportar como','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','textExportar','Callback','')
handles.popExportar=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[20],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7082292,0.0800158,0.0370425,0.0594494],'Relief','default','SliderStep',[0.01,0.1],'String','PDF|JPG|PNG','Style','popupmenu','Value',[1],'VerticalAlignment','middle','Visible','on','Tag','popExportar','Callback','popExportar_callback(handles)')
handles.pushExportar=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[20],'FontUnits','points','FontWeight','bold','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.6282292,0.0100158,0.0770425,0.0594494],'Relief','default','SliderStep',[0.01,0.1],'String','EXPORTAR','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pushExportar','Callback','pushExportar_callback(handles)')

//by Bruno Cubateli, 2018
/////////////////////////////////////////////////////////////////////////
/////////////////////// Definindo as línguas ////////////////////////////

function popLingua_callback(handles)

    Lingua = handles.popLingua.Value;
    
    if Lingua == 1
        set(handles.textTitulo,'String','Aerofólio NACA');
        set(handles.textCodigo,'String','Tipo de código NACA');
        set(handles.textAerofolio,'String','Código NACA do aerofólio (MPXX)');
        set(handles.textPontos,'String','Número de pontos');
        set(handles.textGrade,'String','Tipo de grade');
        set(handles.textBordo,'String','Bordo de fuga');
        set(handles.textPlotar,'String','Plotar como');
        set(handles.pushPlotar,'String','PLOTAR AEROFÓLIO');
        set(handles.textPronto,'String','Defina os parâmetros e clique em PLOTAR AEROFÓLIO.');
        set(handles.radioLinha,'String','Mostrar linha de curvatura média');
        set(handles.popCodigo,'String','NACA 4 dígitos|NACA 5 dígitos');set(handles.popCodigo,'Value',[1]);
        set(handles.popGrade,'String','Uniforme|Não uniforme');set(handles.popGrade,'Value',[1]);
        set(handles.popBordo,'String','Aberto|Fechado');set(handles.popBordo,'Value',[1]);
        set(handles.popPlotar,'String','Linha|Círculos|Pontos');set(handles.popPlotar,'Value',[1]);
        set(handles.pushSair,'String','SAIR');
        set(handles.pushLimpar,'String','LIMPAR GRÁFICO');
        set(handles.textExportar,'String','Exportar como');
        set(handles.pushExportar,'String','EXPORTAR');   /// Mudar no relatório
    elseif Lingua == 2
        set(handles.textTitulo,'String','NACA Airfoil');
        set(handles.textCodigo,'String','NACA Airfoil series');
        set(handles.textAerofolio,'String','NACA Airfoil number (MPXX)');
        set(handles.textPontos,'String','Number of grid points');
        set(handles.textGrade,'String','Grid type');
        set(handles.textBordo,'String','Trailing edge');
        set(handles.textPlotar,'String','Plot as');
        set(handles.pushPlotar,'String','PLOT AIRFOIL');
        set(handles.textPronto,'String','Choose your parameters and click on PLOT AIRFOIL.');
        set(handles.radioLinha,'String','Show camber line');
        set(handles.popCodigo,'String','NACA 4-digit|NACA 5-digit');set(handles.popCodigo,'Value',[1]);
        set(handles.popGrade,'String','Uniform|Nonuniform');set(handles.popGrade,'Value',[1]);
        set(handles.popBordo,'String','Open|Closed');set(handles.popBordo,'Value',[1]);
        set(handles.popPlotar,'String','Line|Circles|Points');set(handles.popPlotar,'Value',[1]);
        set(handles.pushSair,'String','EXIT');
        set(handles.pushLimpar,'String','CLEAR GRAPH');
        set(handles.textExportar,'String','Export as');
        set(handles.pushExportar,'String','EXPORT');
    elseif Lingua == 3
        set(handles.textTitulo,'String','Profil NACA');
        set(handles.textCodigo,'String','Série NACA');
        set(handles.textAerofolio,'String','Code NACA (MPXX)');
        set(handles.textPontos,'String','Nombre de points de la grille');
        set(handles.textGrade,'String','Type de grille');
        set(handles.textBordo,'String','Bord de fuite');
        set(handles.textPlotar,'String','Tracer comme');
        set(handles.pushPlotar,'String','TRACER PROFIL');
        set(handles.textPronto,'String','Choisissez vos paramètres et cliquez sur TRACER PROFIL.');
        set(handles.radioLinha,'String','Montrer la ligne de cambrure');
        set(handles.popCodigo,'String','NACA 4-chiffres|NACA 5-chiffres');set(handles.popCodigo,'Value',[1]);
        set(handles.popGrade,'String','Uniforme|Non uniforme');set(handles.popGrade,'Value',[1]);
        set(handles.popBordo,'String','Ouvert|Fermé');set(handles.popBordo,'Value',[1]);
        set(handles.popPlotar,'String','Ligne|Cercles|Points');set(handles.popPlotar,'Value',[1]);
        set(handles.pushSair,'String','SORTIR');
        set(handles.pushLimpar,'String','NETTOYER GRAPHIQUE');
        set(handles.textExportar,'String','Exporter comment');
        set(handles.pushExportar,'String','EXPORTER');
    end

endfunction

//by Bruno Cubateli, 2018
/////////////////////////////////////////////////////////////////////////
///////////////////// Configurações do gráfico //////////////////////////

    handles.plotAerofolio.isoview = "on";
    handles.plotAerofolio.tight_limits = "on";
    handles.plotAerofolio.data_bounds = [0,-0.3;1,0.3];

//by Bruno Cubateli, 2018
/////////////////////////////////////////////////////////////////////////
////////////// Sinalização do Sistema de Numeração NACA  ////////////////

function popCodigo_callback(handles)
    
    Codigo = handles.popCodigo.Value;
    Lingua = handles.popLingua.Value;
    
    if Codigo == 1
        if Lingua == 1
            set(handles.textAerofolio,'String','Código NACA do aerofólio (MPXX)');
        elseif Lingua == 2
            set(handles.textAerofolio,'String','NACA Airfoil number (MPXX)');
        elseif Lingua == 3
            set(handles.textAerofolio,'String','Code NACA (MPXX)');
        end
        
        set(handles.editAerofolio,'String','0012');
    else
        if Lingua == 1
            set(handles.textAerofolio,'String','Código NACA do aerofólio (LPQXX)');
        elseif Lingua == 2
            set(handles.textAerofolio,'String','NACA Airfoil number (LPQXX)');
        elseif Lingua == 3
            set(handles.textAerofolio,'String','Code NACA (LPQXX)');
        end

        set(handles.editAerofolio,'String','21012');
    end
    
endfunction

//by Bruno Cubateli, 2018
/////////////////////////////////////////////////////////////////////////
///////////// CONDIÇÕES NECESSÁRIAS PARA PLOTAR O AEROFÓLIO /////////////

/// CHECAR ------- Código do aerofólio NACA
 
function editAerofolio_callback(handles)
    
    Aerofolio = handles.editAerofolio.String ;
    Codigo = handles.popCodigo.Value;
    Lingua = handles.popLingua.Value;

    if Codigo == 1 & length (Aerofolio) == 4
        if Lingua == 1
            set(handles.textPronto,'String','Pronto para plotar.');
        elseif Lingua == 2
            set(handles.textPronto,'String','Ready to plot.');
        elseif Lingua == 3
            set(handles.textPronto,'String','Prêt à tracer.');
        end

        set(handles.textPronto,'ForegroundColor',[0,0.7,0]);
        set(handles.pushPlotar,'Enable', 'on');
    end
    
    if Codigo == 1 & length (Aerofolio) ~= 4
        if Lingua == 1
            set(handles.textPronto,'String','Digite um código NACA de 4 dígitos.');
        elseif Lingua == 2
            set(handles.textPronto,'String','Type a 4-digit NACA code.');
        elseif Lingua == 3
            set(handles.textPronto,'String','Tapez un code NACA 4-chiffres.');
        end

        set(handles.textPronto,'ForegroundColor',[1,0,0]);
        set(handles.pushPlotar,'Enable', 'off');
    end
    
    if Codigo == 2 & length (Aerofolio) == 5
        if Lingua == 1
            set(handles.textPronto,'String','Pronto para plotar.');
        elseif Lingua == 2
            set(handles.textPronto,'String','Ready to plot.');
        elseif Lingua == 3
            set(handles.textPronto,'String','Prêt à tracer.');
        end

        set(handles.textPronto,'ForegroundColor',[0,0.7,0]);
        set(handles.pushPlotar,'Enable', 'on');
    end

    if Codigo == 2 & length (Aerofolio) ~= 5
        if Lingua == 1
            set(handles.textPronto,'String','Digite um código NACA de 5 dígitos.');
        elseif Lingua == 2
            set(handles.textPronto,'String','Type a 5-digit NACA code.');
        elseif Lingua == 3
            set(handles.textPronto,'String','Tapez un code NACA 5-chiffres.');
        end

        set(handles.textPronto,'ForegroundColor',[1,0,0]);
        set(handles.pushPlotar,'Enable', 'off');
    end
    
endfunction

//by Bruno Cubateli, 2018
/// CHECAR ----------- Número de pontos no gráfico

function editPontos_callback(handles)

    Pontos = strtod(handles.editPontos.String);
    Lingua = handles.popLingua.Value;
    
    if Pontos >= 3 then
        if Lingua == 1
            set(handles.textPronto,'String','Pronto para plotar.');
        elseif Lingua == 2
            set(handles.textPronto,'String','Ready to plot.');
        elseif Lingua == 3
            set(handles.textPronto,'String','Prêt à tracer.');
        end

        set(handles.textPronto,'ForegroundColor',[0,0.7,0]);
        set(handles.pushPlotar,'Enable', 'on');
    else
        if Lingua == 1
            set(handles.textPronto,'String','Escolha um número de pontos maior que 2.');
        elseif Lingua == 2
            set(handles.textPronto,'String','Choose a number of grid points greater than 2.');
        elseif Lingua == 3
            set(handles.textPronto,'String','Choisissez un nombre de points de la grille supérieur à 2.');
        end

        set(handles.textPronto,'ForegroundColor',[1,0,0]);
        set(handles.pushPlotar,'Enable', 'off');
    end

endfunction

//by Bruno Cubateli, 2018
/////////////////////////////////////////////////////////////////////////
////////////// CÁLCULOS DOS PONTOS PARA PLOTAR O AEROFÓLIO //////////////

function pushPlotar_callback(handles)
    
    Lingua = handles.popLingua.Value;            // =1, português; =2, inglês; =3, francês
    
    /// Informando o usuário que o aerofólio está sendo plotado
    //by Bruno Cubateli, 2018
    
        if Lingua == 1
            set(handles.textPronto,'String','Plotando...');
        elseif Lingua == 2
            set(handles.textPronto,'String','Plotting...');
        elseif Lingua == 3
            set(handles.textPronto,'String','Traçant...');
        end
        
        set(handles.textPronto,'ForegroundColor',[-1,-1,-1]);
        
    /// Desativando o botão 'Plotar Aerofólio'
    
        set(handles.pushPlotar,'Enable','off');

    /// Definindo as variáveis inseridas pelo usuário
        
        Codigo = handles.popCodigo.Value;            // =1, NACA 4 dígitos; =2, NACA 5 dígitos
        Aerofolio = handles.editAerofolio.String;    // Retira o código NACA (completo) inserido pelo usuário
        Pontos = strtod(handles.editPontos.String);  // Retorna o número de pontos a serem utilizados no gráfico
        Grade = handles.popGrade.Value;              // =1, grade uniforme; =2, grade não uniforme
        Bordo = handles.popBordo.Value;              // =1, aberto; =2, fechado
        Plotarcomo = handles.popPlotar.Value;        // =1, linha; =2, círculos; =3, pontos
        Linha = handles.radioLinha.Value;            // =0, não mostrar linha de curvatura média; =1, mostrar linha de curvatura média

    /// Extraindo os valores do código NACA
    
        if Codigo == 1 then
            Mi = strtod(part(Aerofolio,[1]));
            Pi = strtod(part(Aerofolio,[2]));
            XXi = strtod(part(Aerofolio,[3,4]));
        elseif Codigo == 2 then
            LPQ = strtod(part(Aerofolio,[1,2,3]));
            Qi = strtod(part(Aerofolio,[3]));
            XXi = strtod(part(Aerofolio,[4,5]));
            
                /// Para esta programação, não será possível utilizar Qi diferente de 0
    
                if Qi ~= 0 then
                    if Lingua == 1
                        set(handles.textPronto,'String','Utilize um código NACA de 5 dígitos com Q=0');
                    elseif Lingua == 2
                        set(handles.textPronto,'String','Use a 5-digit NACA code with Q=0');
                    elseif Lingua == 3
                        set(handles.textPronto,'String','Utilizez un code NACA 5-chiffres avec Q=0');
                    end
                    set(handles.textPronto,'ForegroundColor',[1,0,0]);
                    set(handles.pushPlotar,'Enable', 'off');
                end
        end

    /// Transformando os valores extraídos para serem utilizados nas fórmulas
    //by Bruno Cubateli, 2018
    
        if Codigo == 1 then
            M = Mi/100;
            P = Pi/10;
            t = XXi/100;
        else
            t = XXi/100;
        end
        
    /// Delimitando as constanstes para cada tipo de código e tipo de bordo de fuga
    
        a0 = 1.4845;
        a1 = 0.63;
        a2 = 1.758;
        a3 = 1.4215;
            
        if Bordo == 1 then
            a4 = 0.5075;
        else
            a4 = 0.5180;
        end
    
    /// Constantes tabuladas para o código de 5 dígitos
    
        if Codigo == 2 then
            if LPQ == 210
                m = 0.058
                K = 361.4
            elseif LPQ == 220
                m = 0.126
                K = 51.65
            elseif LPQ == 230
                m = 0.2025
                K = 15.65
            elseif LPQ == 240
                m = 0.29
                K = 6.643
            elseif LPQ == 250
                m = 0.391
                K = 3.23
            end
        end
        
    /// Espaçamento dos pontos
    
        if Grade == 1 then
            xl = linspace(0,1,Pontos);
        elseif Grade == 2
            beta = linspace(0,%pi,Pontos);
            xl = (0.5*(1-cos(beta)));        /// Equação para dar maior definição aos bordos de ataque e fuga //by Bruno Cubateli, 2018
        end
        
        
    /// Linha de curvatura média
            
        yl = ones(1, length(xl));
        dyl_dxl = ones(1, length(xl));       
        theta=ones(1, length(xl));       
        
        /// Para código NACA de 4 dígitos
        
        if Codigo==1 then
            for c=1:length(xl)
                if xl(c) >=0 & xl(c) < P
                    yl(c) = (M/P^2).*((2*P*xl(c))-xl(c)^2);                
                    deff('dyldxl=f(yl,xl)','dyldxl=((2*M)/(P^2))*(P-xl)');
                    dyl_dxl(c) = ode(0,0,xl(c),f);
                elseif xl(c) >= P & xl(c) <= 1
                    yl(c) = (M/(1-P)^2).*(1-(2*P)+(2*P*xl(c))-(xl(c)^2));                
                    deff('dyldxl=f(yl,xl)','dyldxl=((2*M)/((1-P)^2))*(P-xl)');
                    dyl_dxl(c) = ode(0,0,xl(c),f);
                end
                theta(c) = atan(dyl_dxl(c));            
            end
        end
        
        /// Para código NACA de 5 dígitos
        
        if Codigo==2 then
            for c=1:length(xl)
                if xl(c) >=0 & xl(c) <= m
                    yl(c) = (K/6)*((xl(c))^3-3*m*(xl(c))^2+m^2*(3-m)*(xl(c)));
                    deff('dyldxl=f(yl,xl)','dyldxl=(K/6)*(3*xl^2-6*m*xl+m^2*(3-m))');
                    dyl_dxl(c) = ode(0,0,xl(c),f);
                elseif xl(c) > m & xl(c) <= 1
                    yl(c) = (K/6)*m^3*(1-xl(c));                
                    deff('dyldxl=f(yl,xl)','dyldxl=-(K/6)*m^3');
                    dyl_dxl(c) = ode(0,0,xl(c),f);
                end
                theta(c)=atan(dyl_dxl(c));
             end
        end
        
    /// Distribuição da espessura
    
        ye = t.*(a0.*sqrt(xl) - a1.*xl - a2.*xl.^2 + a3.*xl.^3 - a4.*xl.^4);
        
    /// Coordenadas superiores
        
        xs = xl - ye.*sin(theta);
        ys = yl + ye.*cos(theta);
        
    /// Coordenadas inferiores
    
        xi = xl + ye.*sin(theta);
        yi = yl - ye.*cos(theta);
        
    /// Plotar o aerofólio
        
        xgrid;
        
        if Plotarcomo == 1 then
            plotS = plot(xs,ys,'k-');
            plotI = plot(xi,yi,'k-');
            if Linha == 1 then
                plotL = plot(xl,yl,'r-');
            end
        elseif Plotarcomo == 2
            plotS = plot(xs,ys,'ko');
            plotI = plot(xi,yi,'ko');
            if Linha == 1 then
                plotL = plot(xl,yl,'ro');
            end
        elseif Plotarcomo == 3
            plotS = plot(xs,ys,'k.');
            plotI = plot(xi,yi,'k.');
            if Linha == 1 then
                plotL = plot(xl,yl,'r.');
            end
        end
        
     /// Avisando o usuário que o aerofólio foi plotado
     //by Bruno Cubateli, 2018
        
        if Lingua == 1
            set(handles.textPronto,'String','Aerofólio plotado. Para deletar o aerofólio, clique em LIMPAR GRÁFICO.');
        elseif Lingua == 2
            set(handles.textPronto,'String','Airfoil plotted. To delete the airfoil, click on CLEAR GRAPH.');
        elseif Lingua == 3
            set(handles.textPronto,'String','Profil tracé. Pour supprimer le profil, cliquez sur NETTOYER GRAPHIQUE.');
        end
        
        set(handles.pushLimpar,'Enable','on');
        set(handles.textPronto,'ForegroundColor',[-1,-1,-1]);

     /// Ativando o botão 'PLOTAR AEROFÓLIO'
     
        set(handles.pushPlotar,'Enable','on');
        
 
endfunction

//by Bruno Cubateli, 2018
/////////////////////////////////////////////////////////////////////////
///////////// CONFIGURAÇÃO DO BOTÃO PARA DELETAR O GRÁFICO //////////////

function pushLimpar_callback(handles)

    delete(handles.plotAerofolio.children);
    clear;
    clc;

    set(handles.pushLimpar,'Enable','off');
    set(handles.pushPlotar,'Enable','on');
    set(handles.textPronto,'ForegroundColor',[-1,-1,-1]);
    
    Lingua = handles.popLingua.Value;
    if Lingua == 1
        set(handles.textPronto,'String','Defina os parâmetros e clique em PLOTAR AEROFÓLIO.');
    elseif Lingua == 2
        set(handles.textPronto,'String','Choose your parameters and click on PLOT AIRFOIL.');
    elseif Lingua == 3
        set(handles.textPronto,'String','Choisissez vos paramètres et cliquez sur TRACER PROFIL.');
    end
    
endfunction

//by Bruno Cubateli, 2018
/////////////////////////////////////////////////////////////////////////
////////////////////////// EXPORTAR GRÁFICO /////////////////////////////

function pushExportar_callback(handles)
    
    Lingua = handles.popLingua.Value;            // =1, português; =2, inglês; =3, francês
    Aerofolio = handles.editAerofolio.String;
    
    /// Criando uma nova janela
    
        e=figure(5,'BackgroundColor',[1,1,1]);
        handles.plotExportar=newaxes(e);
        handles.plotExportar.isoview = "on";
        handles.plotExportar.tight_limits = "on";
        handles.plotExportar.data_bounds = [0,-0.3;1,0.3];
        handles.plotExportar.margins = [ 0 0 0 0]; 
        handles.plotExportar.axes_bounds = [0.1,0.1,0.8,0.8];
        
    /// Informando o usuário que o aerofólio está sendo plotado
    
        if Lingua == 1
            set(handles.textPronto,'String','Exportando...');
        elseif Lingua == 2
            set(handles.textPronto,'String','Exporting...');
        elseif Lingua == 3
            set(handles.textPronto,'String','Exportant...');
        end
        
        set(handles.textPronto,'ForegroundColor',[-1,-1,-1]);
        
    /// Desativando o botão 'EXPORTAR'
    
        set(handles.pushExportar,'Enable','off');

    /// Definindo as variáveis inseridas pelo usuário
        
        Codigo = handles.popCodigo.Value;            // =1, NACA 4 dígitos; =2, NACA 5 dígitos
        Aerofolio = handles.editAerofolio.String;    // Retira o código NACA (completo) inserido pelo usuário
        Pontos = strtod(handles.editPontos.String);  // Retorna o número de pontos a serem utilizados no gráfico
        Grade = handles.popGrade.Value;              // =1, grade uniforme; =2, grade não uniforme
        Bordo = handles.popBordo.Value;              // =1, aberto; =2, fechado
        Plotarcomo = handles.popPlotar.Value;        // =1, linha; =2, círculos; =3, pontos
        Linha = handles.radioLinha.Value;            // =0, não mostrar linha de curvatura média; =1, mostrar linha de curvatura média

    /// Extraindo os valores do código NACA
    //by Bruno Cubateli, 2018
    
        if Codigo == 1 then
            Mi = strtod(part(Aerofolio,[1]));
            Pi = strtod(part(Aerofolio,[2]));
            XXi = strtod(part(Aerofolio,[3,4]));
        elseif Codigo == 2 then
            LPQ = strtod(part(Aerofolio,[1,2,3]));
            Qi = strtod(part(Aerofolio,[3]));
            XXi = strtod(part(Aerofolio,[4,5]));
            
                /// Para esta programação, não será possível utilizar Q diferente de 0
    
                if Qi ~= 0 then
                    if Lingua == 1
                    elseif Lingua == 2
                    elseif Lingua == 3
                    end
                    set(handles.textPronto,'String','Utilize um código NACA de 5 dígitos com Q=0.');
                    set(handles.textPronto,'ForegroundColor',[1,0,0]);
                    set(handles.pushPlotar,'Enable', 'off');
                end
        end

    /// Transformando os valores extraídos para serem utilizados nas fórmulas
    
        if Codigo == 1 then
            M = Mi/100;
            P = Pi/10;
            t = XXi/100;
        else
            t = XXi/100;
        end
        
    /// Delimitando as constantes para cada tipo de código e tipo de bordo de fuga
    
        a0 = 1.4845;
        a1 = 0.63;
        a2 = 1.758;
        a3 = 1.4215;
            
        if Bordo == 1 then
            a4 = 0.5075;
        else
            a4 = 0.5180;
        end
    
    /// Constantes tabuladas para o código de 5 dígitos
    
        if Codigo == 2 then
            if LPQ == 210
                m = 0.058
                K = 361.4
            elseif LPQ == 220
                m = 0.126
                K = 51.65
            elseif LPQ == 230
                m = 0.2025
                K = 15.65
            elseif LPQ == 240
                m = 0.29
                K = 6.643
            elseif LPQ == 250
                m = 0.391
                K = 3.23
            end
        end
        
    /// Espaçamento dos pontos
    
        if Grade == 1 then
            xl = linspace(0,1,Pontos);
        elseif Grade == 2
            beta = linspace(0,%pi,Pontos);
            xl = (0.5*(1-cos(beta)));
        end
        
        
    /// Linha de curvatura média
            
        yl = ones(1, length(xl));
        dyl_dxl = ones(1, length(xl));       
        theta=ones(1, length(xl));       
        
        /// Para código NACA de 4 dígitos
        
        if Codigo==1 then
            for c=1:length(xl)
                if xl(c) >=0 & xl(c) < P
                    yl(c) = (M/P^2).*((2*P*xl(c))-xl(c)^2);                
                    deff('dyldxl=f(yl,xl)','dyldxl=((2*M)/(P^2))*(P-xl)');
                    dyl_dxl(c) = ode(0,0,xl(c),f);
                elseif xl(c) >= P & xl(c) <= 1
                    yl(c) = (M/(1-P)^2).*(1-(2*P)+(2*P*xl(c))-(xl(c)^2));                
                    deff('dyldxl=f(yl,xl)','dyldxl=((2*M)/((1-P)^2))*(P-xl)');
                    dyl_dxl(c) = ode(0,0,xl(c),f);
                end
                theta(c) = atan(dyl_dxl(c));            
            end
        end
        
        /// Para código NACA de 5 dígitos
        
        if Codigo==2 then
            for c=1:length(xl)
                if xl(c) >=0 & xl(c) <= m
                    yl(c) = (K/6)*((xl(c))^3-3*m*(xl(c))^2+m^2*(3-m)*(xl(c)));
                    deff('dyldxl=f(yl,xl)','dyldxl=(K/6)*(3*xl^2-6*m*xl+m^2*(3-m))');
                    dyl_dxl(c) = ode(0,0,xl(c),f);
                elseif xl(c) > m & xl(c) <= 1
                    yl(c) = (K/6)*m^3*(1-xl(c));                
                    deff('dyldxl=f(yl,xl)','dyldxl=-(K/6)*m^3');
                    dyl_dxl(c) = ode(0,0,xl(c),f);
                end
                theta(c)=atan(dyl_dxl(c));
             end
        end
        
    /// Distribuição da espessura
    
        ye = t.*(a0.*sqrt(xl) - a1.*xl - a2.*xl.^2 + a3.*xl.^3 - a4.*xl.^4);
        
    /// Coordenadas superiores
        
        xs = xl - ye.*sin(theta);
        ys = yl + ye.*cos(theta);
        
    /// Coordenadas inferiores
    
        xi = xl + ye.*sin(theta);
        yi = yl - ye.*cos(theta);
        
    /// Plotar o aerofólio
        
        xgrid;
        
        if Plotarcomo == 1 then
            plotS = plot(xs,ys,'k-');
            plotI = plot(xi,yi,'k-');
            if Linha == 1 then
                plotL = plot(xl,yl,'r-');
            end
        elseif Plotarcomo == 2
            plotS = plot(xs,ys,'ko');
            plotI = plot(xi,yi,'ko');
            if Linha == 1 then
                plotL = plot(xl,yl,'ro');
            end
        elseif Plotarcomo == 3
            plotS = plot(xs,ys,'k.');
            plotI = plot(xi,yi,'k.');
            if Linha == 1 then
                plotL = plot(xl,yl,'r.');
            end
        end
        
    /// Exportar para o tipo de arquivo definido
        
        Arquivo = handles.popExportar.Value    // =1, PDF; =2, JPG; =3, PNG
        
        if Arquivo == 1
            xs2pdf(5,Aerofolio, 'landscape');
        elseif Arquivo == 2
            xs2jpg(5,Aerofolio, 0.95);
        elseif Arquivo == 3
            xs2png(5,Aerofolio);
        end
    
    /// Deletando a página criada
        
        delete(handles.plotExportar.children);
        delete(e);
        
    /// Informando que o aerofólio foi exportado
        
        if Lingua == 1
            set(handles.textPronto,'String','Aerofólio exportado.');
        elseif Lingua == 2
            set(handles.textPronto,'String','Airfoil exported.');
        elseif Lingua == 3
            set(handles.textPronto,'String','Profil exporté.');
        end

    
    /// Ativando o botão "EXPORTAR"
    
        set(handles.pushExportar,'Enable','on');
        
endfunction

//by Bruno Cubateli, 2018
/////////////////////////////////////////////////////////////////////////
///////////// CONFIGURAÇÃO DO BOTÃO PARA SAIR DA INTERFACE //////////////

function pushSair_callback(handles)

    delete(f);

    clear;

    clc;

endfunction

//by Bruno Cubateli, 2018

