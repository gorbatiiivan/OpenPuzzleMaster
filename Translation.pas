unit Translation;

interface

uses WinAPI.Windows;

const
   EN_US = 'English';
   RU_RU = 'Русский';
   RO_RO = 'Română';

   GLOBAL_CPTN_BTN_LANG = 1;
   GLOBAL_HINT_BTN_ib1 = 2;
   GLOBAL_HINT_BTN_ib2 = 3;
   GLOBAL_HINT_BTN_ib3 = 4;
   GLOBAL_HINT_BTN_ib4 = 5;
   GLOBAL_HINT_BTN_ib5 = 6;
   GLOBAL_HINT_BTN_ib6 = 7;
   GLOBAL_HINT_BTN_ib7 = 8;
   GLOBAL_HINT_BTN_ib8 = 9;
   GLOBAL_HINT_BTN_ib9 = 10;
   GLOBAL_HINT_BTN_ib10_25 = 11;
   GLOBAL_HINT_BTN_ib26 = 12;
   GLOBAL_CPTN_LBL_LBL3 = 13;
   GLOBAL_CPTN_LBL_LBL4 = 14;
   GLOBAL_HINT_PNL_PNL2 = 15;
   GLOBAL_CPTN_LBL_LBL9 = 16;
   GLOBAL_HINT_LBL_LBL9 = 17;
   GLOBAL_CPTN_LBL_LBL10 = 18;
   GLOBAL_HINT_LBL_LBL10 = 19;
   GLOBAL_CPTN_BTN_BKGR = 20;
   GLOBAL_HINT_BTN_BKGR = 21;
   GLOBAL_CPTN_LBL_LBL7 = 22;
   GLOBAL_HINT_LBL_LBL7 = 23;
   GLOBAL_CPTN_LBL_LBL8 = 24;
   GLOBAL_HINT_LBL_LBL8 = 25;
   GLOBAL_CPTN_CHKBOX_CHKBOX1 = 26;
   GLOBAL_HINT_CHKBOX_CHKBOX1 = 27;
   GLOBAL_CPTN_CHKBOX_CHKBOX7 = 28;
   GLOBAL_HINT_CHKBOX_CHKBOX7 = 29;
   GLOBAL_HINT_EDIT_ED1 = 30;
   GLOBAL_HINT_EDIT_E1 = 31;
   GLOBAL_HINT_EDIT_E5 = 32;
   GLOBAL_HINT_EDIT_E9 = 33;
   GLOBAL_CPTN_CHKBOX_CHKBOX5 = 34;
   GLOBAL_CPTN_CHKBOX_CHKBOX6 = 35;
   GLOBAL_CPTN_CHKBOX_CHKBOX3 = 36;
   GLOBAL_HINT_CHKBOX_CHKBOX3 = 37;
   GLOBAL_CPTN_CHKBOX_CHKBOX2 = 38;
   GLOBAL_HINT_CHKBOX_CHKBOX2 = 39;
   GLOBAL_CPTN_BTN_RESET = 40;
   GLOBAL_HINT_BTN_RESET = 41;
   GLOBAL_CPTN_MENUITEM_N1 = 42;
   GLOBAL_CPTN_MENUITEM_N2 = 43;
   GLOBAL_CPTN_ABOUT_TEXT1 = 44;
   GLOBAL_CPTN_ABOUT_TEXT2 = 45;
   GLOBAL_CPTN_FORM_BKGRFORM = 46;
   GLOBAL_CPTN_BKGRFORM_LBL1 = 47;
   GLOBAL_CPTN_BKGRFORM_BTN1 = 48;
   GLOBAL_CPTN_BKGRFORM_BTN2 = 49;
   GLOBAL_CPTN_ABOUT_TEXT3 = 50;
   GLOBAL_CPTN_BKGRFORM_BTN_ADDIMG = 51;
   GLOBAL_HINT_BKGRFORM_BTN_ADDIMG = 52;
   GLOBAL_CPTN_BKGRFORM_LISTVIEW_GROUP0 = 53;
   GLOBAL_CPTN_BKGRFORM_LISTVIEW_GROUP1 = 54;
   GLOBAL_CPTN_BKGRFORM_MENU_OPENDIR = 55;
   GLOBAL_CPTN_MENUITEM_N4 = 56;

function _( const StringID : DWORD; aLanguageID : String = EN_US ) : String;

implementation

function _( const StringID : DWORD; aLanguageID : String = EN_US ) : String;
begin
if aLanguageID = EN_US then
  case StringID of
   1: Result := 'English';
   2: Result := 'Let"s upload a beautiful picture and make an interesting puzzle out of it'
                + #13 + 'The image size can be changed with the mouse wheel.';
   3: Result := 'Now that the picture has been uploaded, you can see what the finished puzzle will look like.'
                + #13 + 'The number of puzzle pieces can be changed in the settings.';
   4: Result := 'Just click to start the game. You can move the puzzle or move it on top of the others with the left mouse button.'
                + #13 + 'Using the right one, on the contrary, move it down or hide it, depending on which mode is selected'
                + #13 + '(Switching modes is done by clicking on the mouse wheel. Default - hide puzzles).';
   5: Result := 'In the settings menu you can change the number of puzzle pieces and their appearance.'
                + #13 + 'There are also many other parameters that can be changed.'
                + #13 + 'To hide the settings panel, just click the button again.';
   6: Result := 'You can simplify the game by selecting the elements that make up the puzzle frame.'
                + #13 + 'To separate them from the rest, press the button. And again to bring it back.';
   7: Result := 'Move single puzzles to the right';
   8: Result := 'Moving single puzzles to the left';
   9: Result := 'Moving single puzzles up';
   10: Result := 'Moving single puzzles down';
   11: Result := 'Selecting puzzles of the desired shape';
   12: Result := 'Click to view the assembled image.';
   13: Result := 'Horizontal quantity';
   14: Result := 'Vertical quantity';
   15: Result := 'How many puzzle pieces to cut the picture (horizontally and vertically).';
   16: Result := 'Accuracy of joining puzzles';
   17: Result := 'The lower this parameter, the more accurately you will have to combine puzzle pieces, it will be more difficult to play.';
   18: Result := 'Exit of the screen borders, %';
   19: Result := 'This parameter determines how much puzzles can extend beyond the screen.';
   20: Result := 'Background';
   21: Result := 'Change main background';
   22: Result := 'Deformation of puzzle corners';
   23: Result := 'The percentage of deviation of the corner points of the puzzles.';
   24: Result := 'Puzzle border deformation';
   25: Result := 'The percentage deviation of the bend of the sidelines of the puzzles.';
   26: Result := 'Classic type of puzzles';
   27: Result := 'The direction of bending of the borders is opposite to the direction of the puzzle locks.';
   28: Result := 'Volumetric puzzle frame';
   29: Result := 'The volumetric frame looks more beautiful, but you will have to wait longer for the markings.';
   30: Result := 'Thickness of the volumetric puzzle frame.';
   31: Result := 'Brightness bottom/left';
   32: Result := 'Brightness top/right';
   33: Result := 'Smoothness percentage of lines';
   34: Result := 'Hints';
   35: Result := 'Sound';
   36: Result := 'Save';
   37: Result := 'Save the current game on exit';
   38: Result := 'Your version';
   39: Result := 'Create your own version of the puzzle';
   40: Result := 'Default settings';
   41: Result := 'Reset all settings to default';
   42: Result := 'Open from file';
   43: Result := 'Open from URL';
   44: Result := 'A fork of SuperPuzzleMaster by stalkself';
   45: Result := 'Developer Gorbatii Ivan';
   46: Result := 'Choose any background image you like';
   47: Result := 'To take effect, you need to restart the game!!';
   48: Result := 'Select';
   49: Result := 'Cancel';
   50: Result := 'Keyboard shortcuts: F11 – Full Screen';
   51: Result := 'Add image';
   52: Result := 'Add an image from another location';
   53: Result := 'Embedded images';
   54: Result := 'Custom images';
   55: Result := 'Open directory';
   56: Result := 'Saved files';
  end else
if aLanguageID = RU_RU then
  case StringID of
   1: Result := 'Русский';
   2: Result := 'Давай загрузим красивую картинку и сделаем из нее интересный пазл.'
                + #13 + 'Размеры картинки можно изменять колесиком мышки.';
   3: Result := 'Теперь, когда картинка загружена, можно посмотреть, как будет выглядеть готовый пазл.'
                + #13 + 'Количество деталей-пазлов можно изменить в настройках.';
   4: Result := 'Просто нажми, чтобы начать игру. Перемещать пазл или переместить его поверх остальных можно левой кнопкой мыши.'
                + #13 + 'При помощи правой - наоборот, убрать вниз или спрятать, в зависимости от того, какой выбран режим'
                + #13 + '(Переключение режимов осуществляется нажатием на колесико мыши. По умолчанию - прятать пазлы).';
   5: Result := 'В меню настроек можно изменить количество деталей-пазлов, их внешний вид.'
                + #13 + 'Также есть и много других параметров, которые можно изменять.'
                + #13 + 'Чтобы скрыть панель настроек, достаточно нажать на кнопку еще раз.';
   6: Result := 'Можно упростить игру, отобрав элементы, составляющие рамку пазла.'
                + #13 + 'Чтобы отделить их от остальных нажми на кнопку. И еще раз, чтобы вернуть обратно.';
   7: Result := 'Перемещение одиночных пазлов вправо';
   8: Result := 'Перемещение одиночных пазлов влево';
   9: Result := 'Перемещение одиночных пазлов вверх';
   10: Result := 'Перемещение одиночных пазлов вниз';
   11: Result := 'Выбор пазлов нужной формы';
   12: Result := 'Нажми, чтобы посмотреть на собранную картинку.';
   13: Result := 'Количество по горизонтали';
   14: Result := 'Количество по вертикали';
   15: Result := 'На сколько кусочков-пазлов разрезать картинку (по горизонтали и по вертикали).';
   16: Result := 'Точность стыковки пазлов';
   17: Result := 'Чем ниже этот параметр, тем точнее придется совмещать кусочки-пазлы, играть будет сложнее.';
   18: Result := 'Выход за границы экрана, %';
   19: Result := 'Параметр определяет насколько пазлы могут выходить за пределы экрана.';
   20: Result := 'Фон';
   21: Result := 'Изменить главный фон';
   22: Result := 'Деформация углов пазлов';
   23: Result := 'Процент отклонения угловых точек пазлов.';
   24: Result := 'Деформация границы пазлов';
   25: Result := 'Процент отклонения изгиба боковых линий пазлов.';
   26: Result := 'Классический вид пазлов';
   27: Result := 'Направление изгиба границ противоположно направлению замков пазлов.';
   28: Result := 'Объемная рамка пазлов';
   29: Result := 'Объемная рамка выглядит красивей, но и ждать разметки придется дольше.';
   30: Result := 'Толщина объемной рамки пазлов.';
   31: Result := 'Яркость снизу/слева';
   32: Result := 'Яркость сверху/справа';
   33: Result := 'Процент плавности линий';
   34: Result := 'Подсказки';
   35: Result := 'Звук';
   36: Result := 'Сохранять';
   37: Result := 'Сохранять текущую игру при выходе';
   38: Result := 'Свой вариант пазла';
   39: Result := 'Создайте свою версию головоломки';
   40: Result := 'Настройки по умолчанию';
   41: Result := 'Сбросить все настройки по умолчанию';
   42: Result := 'Открыть из файла';
   43: Result := 'Открыть из URL адрес';
   44: Result := 'Ответвление от проекта SuperPuzzleMaster от stalkself';
   45: Result := 'Разработчик Gorbatii Ivan';
   46: Result := 'Выберите любое фоновое изображение, которое вам нравится';
   47: Result := 'Для вступление в силу нужно перезагрузить игру!!!';
   48: Result := 'Выбрать';
   49: Result := 'Отмена';
   50: Result := 'Сочетания клавиш: F11 — полноэкранный режим';
   51: Result := 'Добавить';
   52: Result := 'Добавить изображение из другого места';
   53: Result := 'Встроенные изображения';
   54: Result := 'Пользовательские изображения';
   55: Result := 'Открыть каталог';
   56: Result := 'Сохранённые файлы';
  end else
if aLanguageID = RO_RO then
  case StringID of
   1: Result := 'Română';
   2: Result := 'Să încărcăm o imagine frumoasă și să facem un puzzle interesant din ea.'
                + #13 + 'Dimensiunea imaginii poate fi modificată cu rotița mouse-ului.';
   3: Result := 'Acum că imaginea este încărcată, puteți vedea cum va arăta puzzle-ul finit.'
                + #13 + 'Numărul de piese puzzle poate fi schimbat în setări.';
   4: Result := 'Doar faceți clic pentru a începe jocul. Puteți muta puzzle-ul sau îl puteți muta peste celelalte cu butonul stâng al mouse-ului.'
                + #13 + 'Cu ajutorul dreptei - dimpotrivă, eliminați sau ascundeți, în funcție de modul selectat'
                + #13 + '(Schimbarea modurilor se face făcând clic pe rotița mouse-ului. Implicit - ascunde puzzle-urile).';
   5: Result := 'În meniul de setări puteți modifica numărul de piese de puzzle și aspectul acestora.'
                + #13 + 'Există, de asemenea, mulți alți parametri care pot fi modificați.'
                + #13 + 'Pentru a ascunde panoul de setări, faceți clic din nou pe butonul.';
   6: Result := 'Puteți simplifica jocul selectând elementele care compun rama puzzle-ului.'
                + #13 + 'Pentru a le separa de restul, apăsați butonul. Și din nou să-l aduc înapoi.';
   7: Result := 'Mutați puzzle-uri individuale la dreapta';
   8: Result := 'Mutați puzzle-uri individuale spre stânga';
   9: Result := 'Mutați puzzle-uri individuale în sus';
   10: Result := 'Mutați puzzle-uri individuale în jos';
   11: Result := 'Selectarea puzzle-urilor cu forma dorită';
   12: Result := 'Faceți clic pentru a vizualiza imaginea asamblată.';
   13: Result := 'Cantitatea pe orizontală';
   14: Result := 'Cantitatea pe verticală';
   15: Result := 'În câte piese de puzzle trebuie tăiată imaginea (orizontal și vertical).';
   16: Result := 'Precizia unirii puzzle-urilor';
   17: Result := 'Cu cât este mai mic acest parametru, cu atât mai precis va trebui să combinați piesele puzzle-ului și va fi mai dificil de jucat.';
   18: Result := 'Ieșirea în afara ecranului, %';
   19: Result := 'Acest parametru determină cât de mult se pot extinde puzzle-urile dincolo de ecran.';
   20: Result := 'Fundal';
   21: Result := 'Schimbați fundalul principal';
   22: Result := 'Deformarea colțurilor puzzle-ului';
   23: Result := 'Abaterea procentuală a punctelor de colț ale puzzle-ului.';
   24: Result := 'Deformarea marginii puzzle-ului';
   25: Result := 'Abaterea procentuală a curbei liniilor laterale ale puzzle-urilor.';
   26: Result := 'Puzzle-uri de tip clasic';
   27: Result := 'Direcția de îndoire a marginilor este opusă direcției încuietorilor puzzle.';
   28: Result := 'Rama volumetrica a puzzle-ului';
   29: Result := 'Rama volumetrică arată mai frumos, dar va trebui să așteptați mai mult.';
   30: Result := 'Grosimea cadrului puzzle-ului tridimensional.';
   31: Result := 'Luminozitate jos/stânga';
   32: Result := 'Luminozitate sus/dreapta';
   33: Result := 'Procentul de netezime al liniilor';
   34: Result := 'Sfaturi';
   35: Result := 'Sunet';
   36: Result := 'Salvează';
   37: Result := 'Salvați jocul curent la ieșire';
   38: Result := 'Versiunea ta proprie';
   39: Result := 'Creează-ți propria versiune a puzzle-ului';
   40: Result := 'Setări implicite';
   41: Result := 'Resetați toate setările la implicit';
   42: Result := 'Deschideți din fișier';
   43: Result := 'Deschideți de la adresa URL';
   44: Result := 'Bazat pe proiectul SuperPuzzleMaster al stalkself';
   45: Result := 'Dezvoltator Gorbatii Ivan';
   46: Result := 'Alegeți orice imagine de fundal care vă place';
   47: Result := 'Pentru a intra în vigoare, trebuie să reporniți jocul!!!';
   48: Result := 'Alegeți';
   49: Result := 'Anulare';
   50: Result := 'Comenzi rapide de la tastatură: F11 – Ecran complet';
   51: Result := 'Adaugă';
   52: Result := 'Adaugă o imagine din altă locație';
   53: Result := 'Imagini încorporate';
   54: Result := 'Imagini personalizate';
   55: Result := 'Deschide directorul';
   56: Result := 'Fișierele salvate';
  end;
end;

end.
