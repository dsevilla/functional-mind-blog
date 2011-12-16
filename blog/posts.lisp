;;; -*- mode: LISP; syntax: COMMON-LISP; package: dsevilla.blog; base: 10; encoding: utf-8; -*-
;;; List of posts

(in-package dsevilla.blog)

;;; include previous posts before us
(map nil (lambda (l) (apply #'new-post l)) *posts-data-old*)

(new-post
 "¡Primera entrada!"
 :body (p "Esta es la primera entrada de este nuevo blog cuyo
          generador está escrito en Common-Lisp. ¿Lisp? Sí, más de 50
          años después sigue vivo, y sinceramente, es una maravilla
          aprenderlo y usarlo. Iré mostrando en el futuro cómo se
          genera.")
 :categories '(:general :lisp :common-lisp :spanish :español)
 :day 13
 :month :september
 :year 2011)


(new-post
 "¡Blog online!"
 :body (p "Pues por ahora no funciona casi nada, pero el blog ya se
 auto-genera, lo cual está muy bien. Por ahora se generan las páginas
 de cada entrada (sin comentarios por ahora), y las categorías,
 también cada una en su página. No genera por ahora ni RSS ni Atom,
 pero eso es sencillo una vez que lo tengo todo funcionando. Como cada
 entrada es un fichero de texto, añadiré también macros de Emacs para
 generar enlaces con macros...")
 :categories '(:general :español :spanish)
 :day 18
 :month :september
 :year 2011)

(new-post
 "Ya funcionan los archivos"
 :body (p "No un gran logro, pero ya funcionan.")
 :day 20
 :categories '(:general :blog)
 :month :september
 :year 2011)

(new-post
 "Y las páginas de los tags"
 :body (concatenate
        'string
        (p "Sólo por curiosidad, he aquí cómo está
implementada la generación de los links con diferente tamaño del "
           (em "sidebar") ":")
        (pre '((:class . "prettyprint lang-lisp"))
         "(defun categories-links ()
  (if *categories-links*
      *categories-links*
      (setf *categories-links* (multiple-value-bind (max-n-posts min-n-posts)
          (loop for c being the hash-values in *posts-for-category*
             maximizing (car c) into max
             minimizing (car c) into min
             finally (return (values max min)))
        (apply #'concatenate 'string
                (loop for k being the hash-keys in *posts-for-category*
                   using (hash-value v)
                   collect (format nil \"&lt;a href=\\\"category-~A.html\\\"
                             title=\\\"~A topic~:*~p\\\" rel=\\\"category tag\\\"
                             style=\\\"font-size: ~Apx;\\\">~3:*~A&lt;/a> \"
                             (string-downcase k)
                             (car v)
                             (+ 9 (round
                                   (/ (- (car v) min-n-posts)
                                      (/ (- max-n-posts min-n-posts) 10)))))))))))")
        (p "Y eso sin contar con el cálculo de "
           (code "*posts-for-category*") "."))
 :categories '(:general :blog :español :spanish :common-lisp :lisp :programming)
 :day 20
 :month :september
 :year 2011)

(new-post
 "Fiestas en Mula"
 :body (p "Me alegro de que mi amigo Pedro Aurelio continúe su blog. En la "
          (a '((:href .
                "http://pallamasjimenez.blogspot.com/2011/09/campanas.html"))
             "última entrada de su blog") ", aparte del sentimiento
religioso, que en mi caso es nulo, sí que echo de menos sentir el
sonido de mi pueblo, poder pasear tranquilamente por él... ¡No dudéis en
acercaros a Mula del 19 al 25 de septiembre!")
 :categories '(:general :friends :español :spanish)
 :hours 22
 :minutes 0
 :day 21
 :month :september
 :year 2011)

(new-post
 "Añadido colorización de código con google-code-prettify"
 :body (p "Pues no ha sido complicado. Simplemente he seguido las
instrucciones del README de la página "
          (link
           "http://code.google.com/p/google-code-prettify/"
           "de google-code-prettify")
          " y ya está.")
 :categories '(:general :blog :español :spanish :common-lisp :lisp :programming)
 :hours 22
 :minutes 40
 :day 23
 :month :september
 :year 2011)

(new-post
 "Entradas del blog antiguo disponibles"
 :body (__
        (p "No sin algo de trabajo, salvando las idiosincrasias de SQL,
donde tenía alojado mi anterior blog con la estructura de base de
    datos de Wordpress, (por ejemplo, las comillas simples en SQL son
'', y no \\') y de Common-Lisp (por ejemplo, no acepta caracteres
especiales como \\n ni \\r), he conseguido añadir todas las entradas
del anterior blog. Ha sido sorprendentemente automático, dadas las
conversiones pertinentes (no muchas).")
        (p "Pero lo que más me ha
sorprendido es que el blog actualmente, al ser generado estáticamente,
ocupa 34 MBytes de datos, está compuesto por 1393 ficheros HTML, y
tarda unos 5 segundos en generarse. No está mal para ser un lenguaje
interpretado. Y podría ser mucho más rápido si supiera optimizarlo
bien, y arreglara algún que otro algoritmo que podría hacerse más
rápido. También si pre-compilara el código en vez de hacerlo cada vez
que se genera el blog (esto lo añadiré al script de generación, que
recompile los ficheros sólo si han cambiado).")
        (p "Al ser tantas entradas, he tenido que añadir una opción de
dividir todos las entradas en páginas, a un número de 50 entradas por
página (de la página principal salen 13 subpáginas). Ha sido algo
complicado integrar la generación de várias subpáginas en lo que ya
tenía, pero no me ha llevado mucho (una media hora). En parte ha sido
más complejo porque Common-Lisp no tiene una operación para partir una
lista (la de las entradas) eficientemente, y he tenido que hacerla
yo. No es muy compleja, pero tampoco trivial si quieres hacerla eficiente."))
 :categories '(:general :blog :español :spanish)
 :hours 21
 :minutes 16
 :day 27
 :month :september
 :year 2011)

(new-post
 "Multiprocesamiento para generar el blog"
 :body (p "Siguiendo "
          (link
           "http://blog.viridian-project.de/2008/10/04/threads-in-sbcl/"
           "este enlace") " voy a intentar añadir multiprocesamiento a
la generación del blog para acelerarlo. No va a ser tan sencillo como
debería ser, por ejemplo, debería existir, como en Clojure, un "
           (code
            "parallel map")
           " pero la verdad es que no hay, sólo hilos
tradicionales... La ventaja, sin embargo, será grande, ya que todas
las páginas se pueden generar en paralelo.")
 :categories '(:blog :español :programming :common-lisp :lisp :spanish)
 :hours 0
 :minutes 27
 :day 29
 :month :september
 :year 2011)

(new-post
 "Estadísticas de tiempo de generación del blog"
 :body (__
        (p "De cara a optimizar la generación de las páginas del blog
con multiprogramación, he querido registrar el tiempo que tarda en
ejecutar la generación en el ordenador que se genera, para compararla
después con la optimización. Para mi sorpresa, la mayor parte del os 8
segundos que lleva la generación se la lleva el leer y compilar el
fichero Lisp que contiene las entradas antiguas (1.3MB), mientras que
la generación de todas las páginas no tarda más de 4 segundos:")
        (pre
"[dsevilla@neuromancer:~/svn/blog]$ sbcl --script packages.lisp
Doing pre-calculations...
Generating index page...
Evaluation took:
  0.116 seconds of real time
  0.120000 seconds of total run time (0.080000 user, 0.040000 system)
  [ Run times consist of 0.040 seconds GC time, and 0.080 seconds non-GC time. ]
  103.45% CPU
  325,871,901 processor cycles
  63,697,264 bytes consed

Generating post pages...
Evaluation took:
  0.408 seconds of real time
  0.410000 seconds of total run time (0.270000 user, 0.140000 system)
  [ Run times consist of 0.010 seconds GC time, and 0.400 seconds non-GC time. ]
  100.49% CPU
  1,144,029,612 processor cycles
  167,055,120 bytes consed

Generating categories pages...
Evaluation took:
  0.074 seconds of real time
  0.070000 seconds of total run time (0.070000 user, 0.000000 system)
  94.59% CPU
  209,026,050 processor cycles
  39,985,040 bytes consed

Generating archives pages...
Evaluation took:
  0.086 seconds of real time
  0.090000 seconds of total run time (0.090000 user, 0.000000 system)
  104.65% CPU
  240,093,459 processor cycles
  43,278,720 bytes consed

Generating RSS...
Evaluation took:
  0.084 seconds of real time
  0.080000 seconds of total run time (0.080000 user, 0.000000 system)
  [ Run times consist of 0.020 seconds GC time, and 0.060 seconds non-GC time. ]
  95.24% CPU
  236,784,003 processor cycles
  35,828,208 bytes consed
"
)
        (p "Esto hace que la optimización, como máximo, sólo pueda
reducir esos 0,4 segundos que tarda la generación. Aún así lo intentaré
como un ejercicio de programación. La otra idea será ver optimizar el
proceso de carga quizá a través de pre-compilación de los ficheros
.lisp. Por cierto, para que luego digan que los lenguajes
interpretados son lentos... 1 segundo en generar 34MB de ficheros de
texto.")

        (p "La última sorpresa... Por casualidad he probado " (code
 "clisp")
           "... Bien, aquí la carga de los ficheros .lisp es
 instantánea, y la ejecución es incluso más rápida (diría incluso
 increíblemente rápida:")
(pre
"[dsevilla@neuromancer:~/svn/blog]$ clisp packages.lisp
Doing pre-calculations...
Generating index page...
Real time: 0.186066 sec.
Run time: 0.19 sec.
Space: 24960736 Bytes
GC: 13, GC time: 0.03 sec.
Generating post pages...
Real time: 0.708989 sec.
Run time: 0.69 sec.
Space: 83706152 Bytes
GC: 36, GC time: 0.06 sec.
Generating categories pages...
Real time: 0.051339 sec.
Run time: 0.05 sec.
Space: 11157832 Bytes
GC: 5, GC time: 0.0 sec.
Generating archives pages...
Real time: 0.249124 sec.
Run time: 0.25 sec.
Space: 13408648 Bytes
GC: 6, GC time: 0.02 sec.
Generating RSS...
Real time: 0.891364 sec.
Run time: 0.88 sec.
Space: 20991880 Bytes
GC: 9, GC time: 0.05 sec.
")

(p "Comparando el tiempo de ejecución visto por el usuario:")
(pre
"[dsevilla@neuromancer:~/svn/blog]$ time clisp packages.lisp
real	0m2.320s
user	0m1.970s
sys	0m0.310s
")
(pre
"[dsevilla@neuromancer:~/svn/blog]$ time sbcl --script packages.lisp
real	0m10.405s
user	0m9.940s
sys	0m0.440s
"
)
(p "Esto es, ¡5 veces más rápido en general clisp que sbcl! Sin
embargo, mirando los datos de cada parte, hay resultados muy extraños
e inconsistentes. Por ejemplo, clisp tarda casi un segundo en generar
RSS, mientras que sbcl tarda 0,08 segundos (un orden de magnitud
menos). Estudiaré el código para ver dónde puede estar el problema,
pero por ahora, usaré clisp para generar el blog, aunque use sbcl, con
el magnífico entorno Slime para Emacs para seguir programando y probando."))
 :categories '(:blog :español :programming :common-lisp :lisp :spanish)
 :hours 16
 :minutes 17
 :day 29
 :month :september
 :year 2011)

(new-post
 "Imágenes en el blog"
 :body (__
        (p "Iba a introducir imágenes en el blog y he querido escribir
una pequeña función que hace más sencillo introducir fácilmente las
imágenes con la ruta por defecto, y, si procede, un enlace para las
mismas. La función queda como sigue:")
           (pre '((:class . "prettyprint lang-lisp"))
                "(defun blog-img (img-file &amp;key alt anchor title params)
  (let* ((param-list
          (cons `(:src . ,(format nil \"~A/~A\" *base-img-url* img-file))
                (cons `(:alt . ,(if alt alt \"Blog image.\")) ; alt is obligatory
                      (when title `((:title . ,title))))))
         (param-list-1 (append param-list params))
         (img-html (img param-list-1)))
    (if anchor
        (a `((:href . ,anchor)) img-html)
        img-html)))
")
        (p "¿No es bonito? En particular me gusta el uso
        del " (em "seudoquote") ". Las funciones " (code "img") "
        y " (code "a") " generan el HTML para las imágenes y para los
        enlaces, respectivamente. Un ejemplo de uso de esa función
        sería:")
        (pre '((:class . "prettyprint lang-lisp"))
             "(blog-img \"abc.jpg\" :alt \"Alt text\" :params '((:width . 500)))
"
)
        (p "donde se elige el fichero " (code "img/abc.jpg") " con un
        texto alternativo y con el conjunto de parámetros adicionales,
        entre ellos el ancho de la imagen. Si se especifica un elemento " (code "anchor") " el código que se genera es el siguiente:")
        (pre '((:class . "prettyprint lang-lisp"))
"(blog-img \"abc.jpg\" :anchor \"http://wherever.com\"  :alt \"bah\" :params '((:width . 500)))")

        (pre '((:class . "prettyprint")) "
&lt;A HREF=\"http://wherever.com\"&gt;&lt;IMG SRC=\"img/abc.jpg\" ALT=\"bah\" WIDTH=\"500\"&gt;&lt;/IMG&gt;&lt;/A&gt;"))
 :categories '(:general :blog :español :spanish :common-lisp :lisp :programming)
 :hours 0
 :minutes 49
 :day 30
 :month :september
 :year 2011)

(new-post
 "Attitude"
 :body (__ (blog-img "DSC_0174.jpg") (blog-img "DSC_0059.jpg"))
 :categories '(:family :photography :english)
 :hours 1
 :minutes 11
 :day 30
 :month :september
 :year 2011)

(new-post
 "Integración de APIs en el modelado"
 :body (p "El magnífico trabajo de Javier Cánovas modelando APIs
de programación aparece enlazado en el blog " (link
                                               "http://modeling-languages.com/"
                                               "Modeling Languages")
". Tuve la suerte de estar en el tribunal de su tesis, y es una pena
que se haya ido a Francia a continuar su trabajo. Le deso lo mejor. La
entrada la tenéis "
           (link
            "http://modeling-languages.com/integrating-apis-in-model-driven-engineering/"
            "aquí") ".")
 :categories '(:modeling :spanish :mde :español)
 :hours 1
 :minutes 00
 :day 4
 :month :october
 :year 2011)

(new-post
 "pacman, el gestor de paquetes de Arch Linux"
 :body (__ (p "Tengo en alguna máquina antigua Arch Linux porque va muy
bien, es sencillo y está optimizado para sistemas pequeños. Hoy, por
casualidad he visto la versión del gestor de paquetes, "
              (code "pacman") " y me ha aparecido esto:")
           (pre "
[dsevilla@dsr ~]$ pacman -V

 .--.                  Pacman v3.5.4 - libalpm v6.0.4
/ _.-' .-.  .-.  .-.   Copyright (C) 2006-2011 Pacman Development Team
\\  '-. '-'  '-'  '-'   Copyright (C) 2002-2006 Judd Vinet
 '--'
                       Este programa puede distribuirse libremente bajo
                       los términos de la licencia GNU General Public License
")
           (p "El juego de palabras es claro. " (code "pacman") ", de
\"package manager\", y también del conocido juego del comecocos."))
 :categories '(:linux :español :spanish)
 :hours 12
 :minutes 43
 :day 4
 :month :october
 :year 2011)

(new-post
 "Búsqueda en el blog"
 :body (__ (p "Como véis, todavía no funciona la búsqueda en el blog,
pero tengo una idea muy interesante para implementarla. Recordad que
el blog se genera estáticamente, así que no puedo depender de ningún
proceso de servidor, así que, por decirlo de alguna manera, tengo que
precalcular la búsqueda y almacenarla en algún sitio, que además, no
entorpezca con el blog (no tarde más tiempo en cargar, por
ejemplo). Lo que estoy preparando lo explicaré con tranquilidad. Por
ahora, valga una muestra de lo que llevo implementado: ")
           (pre '((:class . "prettyprint lang-lisp")) "
BLOG> (hash-table-count
       *words-to-post-hash*)
18119
"
                )
           (p "18119 palabras diferentes. Ahora los posts que
contienen \"corba\", y sus títulos:")
           (pre '((:class . "prettyprint lang-lisp")) "
BLOG> (gethash \"corba\" *words-to-post-hash*)
(#&lt;POST {100A12E8A1}> #&lt;POST {100A12E881}> #&lt;POST {100A12E521}>
 #&lt;POST {100A12E4E1}> #&lt;POST {100A12E4C1}> #&lt;POST {100A12E3E1}>
 #&lt;POST {100A12E021}> #&lt;POST {100A12DBA1}> #&lt;POST {100A12D321}>
 #&lt;POST {100A12CEE1}> #&lt;POST {100A12C821}> #&lt;POST {100A12C641}>
 #&lt;POST {100A12C5A1}> #&lt;POST {100A12C361}> #&lt;POST {100A12C2E1}>
 #&lt;POST {100A12B4E1}> #&lt;POST {1003344011}> #&lt;POST {1003343EB1}>
 #&lt;POST {10033437B1}> #&lt;POST {10033436B1}> #&lt;POST {1007887F81}>
 #&lt;POST {1007887221}> #&lt;POST {10078870A1}> #&lt;POST {1007886801}>)
T
BLOG> (mapcar #'post-title (gethash \"corba\" *words-to-post-hash*))
(\"¿Por qué un Weblog?\" \"5.000.000.000\" \"CCM page, reloaded\"
 \"Recent articles on CCM\" \"German book on CCM\" \"CCM Wiki updated\"
 \"Some thoughts on Web Services\" \"New version of the CCM tutorial\"
 \"Stefan Tilkov on RPC Web Services\" \"Trabajo en la tesis\" \"CORBA Reborn?\"
 \"Interesting post on XML messaging by Stefan Tilkov\" \"Sistemas Distribuidos\"
 \"Prácticas de Sistemas Distribuidos\" \"Un día de trabajo con mi tesis\" \"FreeNX\"
 \"Fowler, inversion del control\" \"Ser profesor tiene sus cosas buenas\"
 \"Función C++ rara del día\" \"The S stands for Simple\"
 \"Conversión sencilla de tipos CORBA\" \"Parecía que nunca iba a llegar...\"
 \"Más avances: Cátedra SAES-UMU\" \"SOAP, entre lo peor de la década\")
")
(p "Lo cual es, por cierto, una magnífica lista de entradas para esa
palabra... Esta información también me permitirá añadir al final un
conjunto de \"posts relacionados\" en cada entrada."))
 :categories '(:español :spanish :blog :common-lisp :lisp :programming)
 :hours 2
 :minutes 31
 :day 5
 :month :october
 :year 2011)


(new-post
 "Peggy Lee--It is a Good Day"
 :body (__ (p "Siempre me ha gustado esta canción. Curiosamente la utilizan actualmente dos anuncios de la tele. Me sirve también para probar la incrustación de canciones de Grooveshark.")
           "<object width=\"250\" height=\"40\"><param name=\"movie\" value=\"http://grooveshark.com/songWidget.swf\" /><param name=\"wmode\" value=\"window\" /><param name=\"allowScriptAccess\" value=\"always\" /><param name=\"flashvars\" value=\"hostname=cowbell.grooveshark.com&amp;songIDs=27103833&amp;style=metal&amp;p=0\" /><embed src=\"http://grooveshark.com/songWidget.swf\" type=\"application/x-shockwave-flash\" width=\"250\" height=\"40\" flashvars=\"hostname=cowbell.grooveshark.com&amp;songIDs=27103833&amp;style=metal&amp;p=0\" allowScriptAccess=\"always\" wmode=\"window\" /></object>")
 :categories '(:español :spanish :general :grooveshark :music)
 :hours 12
 :minutes 36
 :day 6
 :month :october
 :year 2011)

(new-post
 "Let Over Lambda--50 years of Lisp"
 :body (__ (p  "Hoy por casualidad he encontrado esta referencia, "
               (a '((:href . "http://letoverlambda.com/index.cl/guest/chap2.html"))
                  "Let Over Lambda, Closures") " de Doug Hoyte. Es
                  curioso que sin haberlo leído antes, la solución que
                  he dado al problema de extraer la descripción de una
                  entrada del blog sin " (em "tags") " HTML ha sido
                  así usando un " (em "closure") "."))
 :categories '(:español :spanish :programming :lisp :common-lisp :blog)
 :hours 23
 :minutes 06
 :day 9
 :month :october
 :year 2011)

(new-post
 "Muere Dennis Ritchie"
 :body (p "A todo aquel que haya programado alguna vez en C, o en
alguno de los cientos de lenguajes que lo tomaron como guía, no puede
más que apenar la noticia
de " (link "http://www.biobiochile.cl/2011/10/12/muere-dennis-ritchie-padre-del-lenguaje-de-programacion-c-y-el-sistema-operativo-unix.shtml"
                                               "su muerte")
". Adiós a un grande de la informática (este sí).")
 :categories '(:c :programming :español :spanish)
 :hours 10
 :minutes 43
 :day 13
 :month :october
 :year 2011)

(new-post
 "Schopenhauer: El amor, las mujeres y la muerte"
 :body (__ (p "Hace mucho tiempo, mi amigo y compañero de trabajo
Ginés me dejó un libro de Schopenhauer con este título (por cierto,
voy a devolvérselo hoy mismo). A su vez se lo había dejado Jesús
García Molina.  No sé exactamente por qué me lo dejó ni por qué se lo
dejó aquél a Ginés. Cuando uno oye el nombre de Schopenhauer, reputado
filósofo del siglo XVIII, se imagina a un pensador avanzado en su
tiempo, o con un conocimiento profundo de la naturaleza humana. Cuál
es mi sorpresa al leer el capítulo dedicado a las mujeres, cito
textualmente:")
           (blockquote "Sólo el aspecto de la mujer revela que no está
destinada ni a los grandes trabajos de la inteligencia ni a los
grandes trabajos materiales. Paga su deuda a la vida, no con la
acción, sino con el sufrimiento, los dolores del parto, los inquietos
cuidados de la infancia; tiene que obedecer al hombre, ser una
compañera pacienzuda que le serene. No está hecha para los grandes
esfuerzos ni para las penas o los placeres excesivos. [...]")
           (p "Ahí queda eso. Creo que ningún ser humano se echó tanta
mierda (con perdón) encima con un sólo párrafo... Incomprensible,
incluso para la época. Mucho menos para ser considerado un reputado
filósofo.")  )
 :categories '(:filosofía :mujer :schopenhauer :español :spanish)
 :hours 11
 :minutes 39
 :day 13
 :month :october
 :year 2011)

(new-post
 "&quot;Conferencia&quot; &quot;internacional&quot; sobre el futuro de ETA..."
 :body (__ (p "¿De verdad alguien se cree esa pantomima? Vergüenza les
 debería dar. Qué burdo espectáculo. Ahora la banda acatará la petición de tan excelso comité.") )
 :categories '(:general :españa :español :spanish)
 :hours 0
 :minutes 56
 :day 18
 :month :october
 :year 2011)

(new-post
 "Actualización a Ubuntu Oneiric Ocelot (11.10)"
 :body (__ (p "Parece que en este caso la actualización a Ubuntu
 Oneiric Ocelot (11.10) no es tan sencilla ni tan poco problemática
 como otras. Primero, la imposición de Unity. Estoy todavía tratando
 de digerirla. Primero diré que " (strong "NO ME GUSTA NADA") ". Ni en
 2D ni en 3D. Linux no es Mac, por mucho que se empeñen en hacerlo
 parecer, en quitar el botón derecho a todos los paneles (claro, aquí
 seguro que los desarrolladores de Ubuntu usan Mac para todo...),
 etc.")
           (p "Pero es que además la actualización no va bien. Siempre
 quedan flecos sueltos. En algunos la barra izquierda no sale cuando
 acercas el ratón. No hay manera de configurar cómo aparece esa barra,
 a no ser que te vuelvas loco y busques por Internet y te des cuenta
 de que tienes que instalar el
 paquete " (code "compizconfig-settings-manager") ", y ahí tienes una
 pestaña &quot;Unity&quot; que sirve para configurar también la barra
 lateral (tamaño, aparición, etc.). Por último, por ejemplo, si
 teníais configurados " (em "applets") " para mostrar la carga de CPU,
 red, etc., o el tiempo, temperatura, etc., estos tampoco aparecen
 directamente. La solución es instalar manualmente (y ejecutar y
 posteriormente configurar) los
 paquetes " (code "indicator-weather") " para el tiempo,
 e " (code "indicator-multiload") " para que muestre el uso de CPU,
 memoria y red. Al ejecutarlos, se establecen en la barra superior tal
 que así:")
 (blog-img "unity_bar.png" :alt "Unity Bar")
 (p "Por cierto, que en este caso, no me aparece el icono del tiempo,
 ni tampoco el icono de terminar la sesión, que está escondido hacia
 la derecha. Tampoco se pueden mover los iconos, porque el botón
 derecho no lleva esa opción.")
(p (strong "ACTUALIZACIÓN") ": Por lo que
veo " (link "http://www.webupd8.org/2011/08/installing-using-classic-gnome-desktop.html" "aquí") "
instalando el paquete " (code "gnome-session-fallback") " se puede
seleccionar &quot;GNOME Classic&quot; en gdm o LightDM... Menos
mal."))
 :categories '(:general :ubuntu :oneiric :ocelot :linux :español :spanish)
 :hours 1
 :minutes 19
 :day 18
 :month :october
 :year 2011)

(new-post
 "Agur, ETA"
 :body (p "No voy a decir nada que no se haya dicho ya. Quizá como
 diría el gran Labordeta: &quot;¡A la mierda!&quot;. Me ha gustado la
 portada de Público. Además del tributo a las víctimas (con el nombre
 de todas las víctimas), de nuevo apuntaré que me gustan los diseños
 basados en tipografía:"
 (blog-img "portada_publico.jpg" :alt "Portada
Público" :anchor "http://imagenes.publico-estaticos.es/resources/archivos/2011/10/21/1319151795449portada22pdf.pdf")
)
 :categories '(:general :españa :español :spanish)
 :hours 2
 :minutes 26
 :day 21
 :month :october
 :year 2011)

(new-post
 "Translation within Emacs using Google Translate"
:body (__ "<object type=\"application/x-shockwave-flash\" width=\"400\" height=\"375\" data=\"http://www.flickr.com/apps/video/stewart.swf?v=71377\" classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\"> <param name=\"flashvars\" value=\"intl_lang=es-us&amp;photo_secret=&amp;photo_id=6274361464\"></param> <param name=\"movie\" value=\"http://www.flickr.com/apps/video/stewart.swf?v=71377\"></param> <param name=\"bgcolor\" value=\"#000000\"></param> <param name=\"allowFullScreen\" value=\"true\"></param><embed type=\"application/x-shockwave-flash\" src=\"http://www.flickr.com/apps/video/stewart.swf?v=71377\" bgcolor=\"#000000\" allowfullscreen=\"true\" flashvars=\"intl_lang=es-us&amp;photo_secret=&amp;photo_id=6274361464\" height=\"375\" width=\"400\"></embed></object>"
          (p "Just to show a little Emacs-Lisp script I wrote the
          other day. We're in the process of translating all our class
          material into English, and thought of getting some help from
          Google Translator. Selecting a phrase and calling
          the " (code "insert-translation") " function substitutes
          current text with its traduction into English. You know,
          Google Translate fails a fair bit, but it helps, and you
          don't have to write all the slides again..."))
 :categories '(:general :english :emacs :lisp :emacs-lisp :google-translate :translate)
 :hours 0
 :minutes 17
 :day 24
 :month :october
 :year 2011)

(new-post
 "Interesante entrada de JJ. Merelo sobre Jobs y Stallman"
:body (p "Coincide totalmente con lo que pienso. Os
dejo " (link "http://atalaya.blogalia.com/historias/70546" "el enlace:
&quot;Odio a los mártires del rock&quot;" ) ".")
 :categories '(:libre :software :jobs :stallman :español :spanish)
 :hours 12
 :minutes 20
 :day 24
 :month :october
 :year 2011)

(new-post
 "¡Otra vez no! Muere John McCarthy, inventor de Lisp"
 :body (__ (p "Estamos de tristeza últimamente. Tras la muerte de Ritchie,
muere también el inventor de Lisp, John McCarthy. Para un blog escrito
en Lisp (y para toda la comunidad informática mundial) una mala
noticia. Si C es el padre de la mayoría de los lenguajes imperativos,
Lisp lo es de los funcionales. Con esos dos lenguajes casi cubrimos el
99% de la informática... A este seguro que tampoco lo vemos en cientos
de periódicos... Os dejo un enlace
al " (link "http://t.co/oxjiRip7" "artículo original de LISP") ".")
 (blog-img "john-mccarthy-programming-wrong.jpg" :alt "McCarthy"))
 :categories '(:lisp :mccarthy :programming :español :spanish)
 :hours 23
 :minutes 45
 :day 24
 :month :october
 :year 2011)

(new-post
 "Prueba del formato org-mode"
 :body "
<p>En este caso, he utilizado <code>org-mode</code> para <del>crear</del> escribir esta entrada.
</p>
<p>
¡Incluso soporta varios párrafos!
</p>

<p>El código para hacerlo en Emacs-lisp es el siguiente:
</p>

<pre class=\"src src-emacs-lisp\">(<span style=\"color: #6495ed; font-weight: bold;\">defun</span> <span style=\"color: #87ceeb;\">org-to-html</span> ()
  (interactive)
  (<span style=\"color: #6495ed; font-weight: bold;\">when</span> (mark)
    (<span style=\"color: #6495ed; font-weight: bold;\">save-excursion</span>
      (<span style=\"color: #6495ed; font-weight: bold;\">let</span> ((text (buffer-substring-no-properties (point) (mark))))
        (delete-region (point) (mark))
        (insert
         (<span style=\"color: #6495ed; font-weight: bold;\">with-temp-buffer</span>
           (insert text)
           (org-export-region-as-html (point-min) (point-max) t 'string)))))))
</pre>

<p> Lo que hago pues es seleccionar el texto que
escribo en formato org y llamar a esa función
<code>org-to-html</code>, que me transforma el texto seleccionado en
HTML, incluso el trozo de código anterior, con coloreado de sintaxis
que no necesita del embellecedor de código JavaScript de la
página&hellip; </p>"
 :categories '(:español :spanish :lisp :emacs :org-mode :org :blog)
 :body-format :string
 :hours 01 :minutes 53 :day 29 :month 10 :year 2011)

(new-post
 "Macros Emacs para facilitar introducir entradas"
 :body
"
<p>Continuando con el formato <code>org-mode</code>, he añadido también un <i>esqueleto</i> que rellena de forma automática los campos de una entrada del blog, para que sólo tenga que escribir el texto y las categorías. Es la siguiente función Emacs-Lisp:
</p>



<pre class=\"src src-emacs-lisp\">(<span style=\"color: #6495ed; font-weight: bold;\">define-skeleton</span> <span style=\"color: #87ceeb;\">add-new-post</span>
  <span style=\"color: #32cd32;\">\"Add a new post with the current date and time. Ask for the post title.\"</span>
  <span style=\"color: #32cd32;\">\"Post title: \"</span>
  <span style=\"color: #32cd32;\">\"(new-post\"</span> \\n
  &gt; <span style=\"color: #32cd32;\">\"\\\"\"</span> str <span style=\"color: #32cd32;\">\"\\\"\"</span> \\n
  &gt; <span style=\"color: #32cd32;\">\":body \\\"\"</span> _  <span style=\"color: #32cd32;\">\"\\\"\"</span> \\n
  &gt; <span style=\"color: #32cd32;\">\":categories '(:general)\"</span> \\n
  &gt; <span style=\"color: #32cd32;\">\":body-format :string\"</span> \\n
  &gt; (format-time-string
     <span style=\"color: #32cd32;\">\":hours %H :minutes %M :day %e :month %m :year %Y)\"</span>
     (current-time)) \\n )
</pre>

<p>
La función <code>new-post</code> me permite añadir una entrada al blog. Es código Common Lisp, por lo que se ve que comienza por un parémtesis. El patrón (definido por el macro de Emacs-Lisp <code>define-skeleton</code> después me pregunta por el título de la entrada (el uso de la variable <code>str</code> hace que me pregunte a la hora de insertar el patrón). Después, añade el cuerpo vacío y también la fecha actual de la entrada obtenida de la función de Emacs-Lisp <code>(current-time)</code>. Finalmente, el carácter <code>_</code> indica la posición en la que queda el cursor, con lo que puedo empezar a escribir el cuerpo de la entrada.
</p>"
 :categories '(:español :spanish :lisp :emacs :emacs-lisp :skeleton :blog)
 :body-format :string
 :hours 02 :minutes 20 :day 29 :month 10 :year 2011)

(new-post
 "Martina playing, 23 months old"
 :body (__ "<object type=\"application/x-shockwave-flash\" width=\"640\" height=\"480\" data=\"http://www.flickr.com/apps/video/stewart.swf?v=109786\" classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\"> <param name=\"flashvars\" value=\"intl_lang=es-us&photo_secret=bd3e6d1bfc&photo_id=6307578684&flickr_show_info_box=true\"></param> <param name=\"movie\" value=\"http://www.flickr.com/apps/video/stewart.swf?v=109786\"></param> <param name=\"bgcolor\" value=\"#000000\"></param> <param name=\"allowFullScreen\" value=\"true\"></param><embed type=\"application/x-shockwave-flash\" src=\"http://www.flickr.com/apps/video/stewart.swf?v=109786\" bgcolor=\"#000000\" allowfullscreen=\"true\" flashvars=\"intl_lang=es-us&photo_secret=bd3e6d1bfc&photo_id=6307578684&flickr_show_info_box=true\" height=\"480\" width=\"640\"></embed></object>"
           (p "It is REALLY amazing how fast she learns. At her age, she uses almost all Spanish constructions well, verbs (including irregular ones), nouns, slang expressions, tenses, etc. I used the Harinezumi 2++ for this. It is not very good in interiors, but in B&W gives a nice vintage feeling. For those of you not knowing Spanish, at the end of the video she says something like `Wait for me, I'll be right back'... :)"))
 :categories '(:english :video :martina :black&white :b&w)
 :body-format :string
 :hours 01 :minutes 22 :day  3 :month 11 :year 2011)

(new-post
 "Impresionado con la cámara del Samsung Galaxy S II"
 :body (__ (p "He hecho una pequeña prueba con un programa de escaneo de documentos y es magnífica la cámara. Con luz artificial ha generado una imagen con una resolución perfecta de mi tarjeta de seguridad social americana, que llevaba mil años (desde el 2002) en mi cartera. La he usado para mirar mi número de seguridad social americano para abrirme una cuenta en Getty Images, que parece que quieren alguna de mis imágenes de Flickr. Todavía no estoy seguro de si venderé alguna, pero por curiosidad he abierto la cuenta. Pongo a continuación un crop al 100% de la imagen:")
           (blog-img "ssn.png"))
 :categories '(:photography :android :photo :español :spanish)
 :body-format :string
 :hours 00 :minutes 16 :day 15 :month 11 :year 2011)
