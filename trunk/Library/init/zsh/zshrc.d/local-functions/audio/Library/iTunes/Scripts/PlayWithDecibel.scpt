FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
Bob Stern's rev. 1 10/17/10
To facilitate assiging shortcut key (OS X Prefs > Keyboard > Keyboard Shortcuts)
and to ensure that script can only be run from within iTunes, 
store compiled script (with .scpt extension) in:
~/Library/iTunes/Scripts/
     � 	 	� 
 B o b   S t e r n ' s   r e v .   1   1 0 / 1 7 / 1 0 
 T o   f a c i l i t a t e   a s s i g i n g   s h o r t c u t   k e y   ( O S   X   P r e f s   >   K e y b o a r d   >   K e y b o a r d   S h o r t c u t s ) 
 a n d   t o   e n s u r e   t h a t   s c r i p t   c a n   o n l y   b e   r u n   f r o m   w i t h i n   i T u n e s ,   
 s t o r e   c o m p i l e d   s c r i p t   ( w i t h   . s c p t   e x t e n s i o n )   i n : 
 ~ / L i b r a r y / i T u n e s / S c r i p t s / 
   
  
 l     ��������  ��  ��        l      ��  ��    � � variable listing

trackList - the list of tracks selected by user in iTunes

thisTrack - the track being worked on
thisTrackLocation - where to find the track
     �  B   v a r i a b l e   l i s t i n g 
 
 t r a c k L i s t   -   t h e   l i s t   o f   t r a c k s   s e l e c t e d   b y   u s e r   i n   i T u n e s 
 
 t h i s T r a c k   -   t h e   t r a c k   b e i n g   w o r k e d   o n 
 t h i s T r a c k L o c a t i o n   -   w h e r e   t o   f i n d   t h e   t r a c k 
       l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��    0 * get the list of selected tracks in iTunes     �   T   g e t   t h e   l i s t   o f   s e l e c t e d   t r a c k s   i n   i T u n e s      l         O         r     ! " ! l   
 #���� # n    
 $ % $ 1    
��
�� 
sele % 4    �� &
�� 
cwin & m    ���� ��  ��   " o      ���� 0 	tracklist 	trackList   m      ' '�                                                                                  hook  alis    @  2010mini                   ��d�H+     q
iTunes.app                                                      ��Ѳn        ����  	                Applications    ���3      ���       q   2010mini:Applications:iTunes.app   
 i T u n e s . a p p    2 0 1 0 m i n i  Applications/iTunes.app   / ��    "  any window with a selection     � ( ( 8   a n y   w i n d o w   w i t h   a   s e l e c t i o n   ) * ) l     ��������  ��  ��   *  + , + l     �� - .��   - / ) if no tracks were selected, deal with it    . � / / R   i f   n o   t r a c k s   w e r e   s e l e c t e d ,   d e a l   w i t h   i t ,  0 1 0 l   * 2���� 2 Z    * 3 4���� 3 l    5���� 5 =    6 7 6 l    8���� 8 I   �� 9��
�� .corecnte****       **** 9 o    ���� 0 	tracklist 	trackList��  ��  ��   7 m    ����  ��  ��   4 k    & : :  ; < ; l   �� = >��   = 9 3 display error message that no tracks were selected    > � ? ? f   d i s p l a y   e r r o r   m e s s a g e   t h a t   n o   t r a c k s   w e r e   s e l e c t e d <  @ A @ I   #�� B C
�� .sysodlogaskr        TEXT B m     D D � E E j N o   t r a c k s   w e r e   s e l e c t e d   i n   i T u n e s !     P l e a s e   t r y   a g a i n . C �� F G
�� 
disp F m    ��
�� stic    G �� H��
�� 
btns H J     I I  J�� J m     K K � L L  O K��  ��   A  M N M l  $ $�� O P��   O  	then quit    P � Q Q  t h e n   q u i t N  R�� R L   $ &����  ��  ��  ��  ��  ��   1  S T S l     ��������  ��  ��   T  U V U l     �� W X��   W G A move AyreWave to the front if it's running; start it if it's not    X � Y Y �   m o v e   A y r e W a v e   t o   t h e   f r o n t   i f   i t ' s   r u n n i n g ;   s t a r t   i t   i f   i t ' s   n o t V  Z [ Z l  + 0 \���� \ I  + 0�� ]��
�� .miscactvnull��� ��� null ] m   + , ^ ^�                                                                                      @ alis    f  2010mini                   ��d�H+   w�QDecibel.app                                                    ~јɾ5^        ����  	                Digital Media     ���3      ɾ��     w�Q   q  /2010mini:Applications:Digital Media:Decibel.app     D e c i b e l . a p p    2 0 1 0 m i n i  &Applications/Digital Media/Decibel.app  / ��  ��  ��  ��   [  _ ` _ l     ��������  ��  ��   `  a b a l     �� c d��   c ( " stop any tracks playing in iTunes    d � e e D   s t o p   a n y   t r a c k s   p l a y i n g   i n   i T u n e s b  f g f l  1 G h���� h O   1 G i j i Z  5 F k l���� k =  5 : m n m 1   5 8��
�� 
pPlS n m   8 9��
�� ePlSkPSP l I  = B������
�� .hookStopnull        null��  ��  ��  ��   j m   1 2 o o�                                                                                  hook  alis    @  2010mini                   ��d�H+     q
iTunes.app                                                      ��Ѳn        ����  	                Applications    ���3      ���       q   2010mini:Applications:iTunes.app   
 i T u n e s . a p p    2 0 1 0 m i n i  Applications/iTunes.app   / ��  ��  ��   g  p q p l     ��������  ��  ��   q  r s r l     �� t u��   t 5 / add tracks selected in iTunes to Decibel queue    u � v v ^   a d d   t r a c k s   s e l e c t e d   i n   i T u n e s   t o   D e c i b e l   q u e u e s  w x w l  H � y���� y X   H � z�� { z k   \ � | |  } ~ } O  \ n  �  r   ` m � � � c   ` i � � � l  ` e ����� � n   ` e � � � 1   a e��
�� 
pLoc � o   ` a���� 0 	thistrack 	thisTrack��  ��   � m   e h��
�� 
ctxt � o      ���� &0 thistracklocation thisTrackLocation � m   \ ] � ��                                                                                  hook  alis    @  2010mini                   ��d�H+     q
iTunes.app                                                      ��Ѳn        ����  	                Applications    ���3      ���       q   2010mini:Applications:iTunes.app   
 i T u n e s . a p p    2 0 1 0 m i n i  Applications/iTunes.app   / ��   ~  � � � O  o { � � � I  s z�� ���
�� .Decbadflnull���     file � o   s v���� &0 thistracklocation thisTrackLocation��   � m   o p � ��                                                                                      @ alis    f  2010mini                   ��d�H+   w�QDecibel.app                                                    ~јɾ5^        ����  	                Digital Media     ���3      ɾ��     w�Q   q  /2010mini:Applications:Digital Media:Decibel.app     D e c i b e l . a p p    2 0 1 0 m i n i  &Applications/Digital Media/Decibel.app  / ��   �  ��� � I  | ��� ���
�� .sysodelanull��� ��� nmbr � m   | }���� ��  ��  �� 0 	thistrack 	thisTrack { o   K L���� 0 	tracklist 	trackList��  ��   x  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   now start playing    � � � � $   n o w   s t a r t   p l a y i n g �  � � � l  � � ����� � O   � � � � � Z  � � � ����� � H   � � � � 1   � ���
�� 
Plyn � I  � ��� ���
�� .Decbpltinull���     long � m   � �����  ��  ��  ��   � m   � � � ��                                                                                      @ alis    f  2010mini                   ��d�H+   w�QDecibel.app                                                    ~јɾ5^        ����  	                Digital Media     ���3      ɾ��     w�Q   q  /2010mini:Applications:Digital Media:Decibel.app     D e c i b e l . a p p    2 0 1 0 m i n i  &Applications/Digital Media/Decibel.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  � � ����� � O  � � � � � I  � �������
�� .miscactvnull��� ��� null��  ��   � m   � � � ��                                                                                  hook  alis    @  2010mini                   ��d�H+     q
iTunes.app                                                      ��Ѳn        ����  	                Applications    ���3      ���       q   2010mini:Applications:iTunes.app   
 i T u n e s . a p p    2 0 1 0 m i n i  Applications/iTunes.app   / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��~�}�  �~  �}   �  � � � l     �|�{�z�|  �{  �z   �  � � � l     �y�x�w�y  �x  �w   �  � � � l     �v�u�t�v  �u  �t   �  � � � l     �s�r�q�s  �r  �q   �  ��p � l     �o�n�m�o  �n  �m  �p       �l � ��l   � �k
�k .aevtoappnull  �   � **** � �j ��i�h � ��g
�j .aevtoappnull  �   � **** � k     � � �   � �  0 � �  Z � �  f � �  w � �  � � �  ��f�f  �i  �h   � �e�e 0 	thistrack 	thisTrack �  '�d�c�b�a D�`�_�^ K�]�\ ^�[�Z�Y�X�W�V�U�T�S�R�Q�P�O
�d 
cwin
�c 
sele�b 0 	tracklist 	trackList
�a .corecnte****       ****
�` 
disp
�_ stic   
�^ 
btns�] 
�\ .sysodlogaskr        TEXT
�[ .miscactvnull��� ��� null
�Z 
pPlS
�Y ePlSkPSP
�X .hookStopnull        null
�W 
kocl
�V 
cobj
�U 
pLoc
�T 
ctxt�S &0 thistracklocation thisTrackLocation
�R .Decbadflnull���     file
�Q .sysodelanull��� ��� nmbr
�P 
Plyn
�O .Decbpltinull���     long�g �� 
*�k/�,E�UO�j j  �����kv� OhY hO�j O� *�,�  
*j Y hUO =�[a a l kh  � �a ,a &E` UO� 	_ j UOkj [OY��O� *a , 
jj Y hUO� *j Uascr  ��ޭ