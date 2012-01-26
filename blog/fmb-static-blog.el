(eval-when-compile (require 'cl) (require 'fmb-blog))
(setq *the-blog* [cl-struct-fmb-blog "fm" "/fm" "http://neuromancer.inf.um.es" "http://neuromancer.inf.um.es/fm" "rss2.xml" "http://neuromancer.inf.um.es/fm/rss2.xml" "img" "http://neuromancer.inf.um.es/fm/img" "Functional Mind" "an emacs-lisp and org-mode based blog by diego sevilla" 400 100 50 #s(hash-table size 65 test eql rehash-size 1.5 rehash-threshold 0.8 data ()) #s(hash-table size 1642 test equal rehash-size 1.5 rehash-threshold 0.8 data ("hola-" "hola-" "paris" "paris" "por-que-un-weblog" "por-que-un-weblog" "5000000000" "5000000000" "remember-that-there-is-no-code-faster-than-no-code" "remember-that-there-is-no-code-faster-than-no-code" "unix-shell-patterns" "unix-shell-patterns" "xml-efectivo-y-xpath" "xml-efectivo-y-xpath" "globus-toolkit-32-wrapper-para-c" "globus-toolkit-32-wrapper-para-c" "la-mujer-del-cuadro" "la-mujer-del-cuadro" "libro-de-gnome" "libro-de-gnome" "como-no-realizar-una-practica-de-programacion" "como-no-realizar-una-practica-de-programacion" "stephenson-el-mejor" "stephenson-el-mejor" "el-fuego-de-la-venganza" "el-fuego-de-la-venganza" "como-no-tratar-a-los-alumnos" "como-no-tratar-a-los-alumnos" "jornadas-tecnicas-de-rediris-2004-en-toledo" "jornadas-tecnicas-de-rediris-2004-en-toledo" "tesis-de-juan-piernas" "tesis-de-juan-piernas" "asignatura-de-sistemas-distribuidos" "asignatura-de-sistemas-distribuidos" "diseno-para-nodisenadores" "diseno-para-nodisenadores" "linux-en-los-toshiba-m30" "linux-en-los-toshiba-m30" "monad-aka-microsoft-shell-msh" "monad-aka-microsoft-shell-msh" "el-codigo-da-vinci-no-tan-bueno" "el-codigo-da-vinci-no-tan-bueno" "the-anatomy-of-a-software-bug" "the-anatomy-of-a-software-bug" "sobre-codigo-ofuscado-y-otras-curiosidades" "sobre-codigo-ofuscado-y-otras-curiosidades" "de-critico-literario" "de-critico-literario" "jornadas-gnome-en-la-urjc" "jornadas-gnome-en-la-urjc" "escribiendo-programas-seguros" "escribiendo-programas-seguros" "navacerrada-y-segovia" "navacerrada-y-segovia" "sobre-codigo" "sobre-codigo" "sistema-de-control-de-versiones" "sistema-de-control-de-versiones" "spam-spam-y-mas-spam" "spam-spam-y-mas-spam" "ccm-page-reloaded" "ccm-page-reloaded" "wordpress-antispam-toma-1" "wordpress-antispam-toma-1" "recent-articles-on-ccm" "recent-articles-on-ccm" "german-book-on-ccm" "german-book-on-ccm" "new-version-of-starccm" "new-version-of-starccm" "wordpress-antispam-toma-2" "wordpress-antispam-toma-2" "captura-de-pantalla" "captura-de-pantalla" "adam-bosworth-genial" "adam-bosworth-genial" "corba-versus-web-services-de-nuevo" "corba-versus-web-services-de-nuevo" "apache-20" "apache-20" "ccm-wiki-updated" "ccm-wiki-updated" "spam-spam-y-mas-spam-parte-2" "spam-spam-y-mas-spam-parte-2" "wordpress-antispam-toma-3" "wordpress-antispam-toma-3" "truquillos-para-wordpress-contador" "truquillos-para-wordpress-contador" "wordpress-122" "wordpress-122" "wordpress-comentarios-mas-recientes" "wordpress-comentarios-mas-recientes" "happy-new-year-and-a-hacker-tale" "happy-new-year-and-a-hacker-tale" "hackers-and-painters" "hackers-and-painters" "mas-lecturas-coches-y-comiendo-solo-en-el-despacho" "mas-lecturas-coches-y-comiendo-solo-en-el-despacho" "wordpress-antispam-toma-4" "wordpress-antispam-toma-4" "interesante-articulo-sobre-sistemas-de-control-de-versiones" "interesante-articulo-sobre-sistemas-de-control-de-versiones" "cambios-en-el-weblog" "cambios-en-el-weblog" "gravatar" "gravatar" "propuestas-de-mejoras-para-este-weblog" "propuestas-de-mejoras-para-este-weblog" "boris-is-selling-his-car" "boris-is-selling-his-car" "mas-mejoras-para-el-weblog" "mas-mejoras-para-el-weblog" "msn-search-bot-mal-comienzo" "msn-search-bot-mal-comienzo" "2005-ano-internacional-de-la-fisica" "2005-ano-internacional-de-la-fisica" "michael-connelly" "michael-connelly" "wordpress-de-cvs" "wordpress-de-cvs" "un-paseo-por-mula-y-por-mi-infancia" "un-paseo-por-mula-y-por-mi-infancia" "flickr" "flickr" "noticias-mas-comentadas" "noticias-mas-comentadas" "la-abadia-del-crimen" "la-abadia-del-crimen" "a-alguien-se-le-ocurre-algo-mas-patetico" "a-alguien-se-le-ocurre-algo-mas-patetico" "the-world-according-to-student-bloopers" "the-world-according-to-student-bloopers" "axis-para-c" "axis-para-c" "una-segunda-mirada-a-rss" "una-segunda-mirada-a-rss" "im-bored-just-a-quiz" "im-bored-just-a-quiz" "enfermo-y-nevando" "enfermo-y-nevando" "some-thoughts-on-web-services" "some-thoughts-on-web-services" "lo-han-vuelto-a-hacer-mas-spam" "lo-han-vuelto-a-hacer-mas-spam" "increible-en-serio-increible" "increible-en-serio-increible" "terremotos" "terremotos" "no-lo-he-podido-evitar" "no-lo-he-podido-evitar" "juan-del-olmo" "juan-del-olmo" "million-dollar-baby" "million-dollar-baby" "si-senores-se-puede-hacer-asi-el-ridiculo" "si-senores-se-puede-hacer-asi-el-ridiculo" "mas-sobre-spam-otra-vez" "mas-sobre-spam-otra-vez" "por-fin-se-me-ha-ocurrido-algo-para-el-spam-por-trackbacks" "por-fin-se-me-ha-ocurrido-algo-para-el-spam-por-trackbacks" "a-ver-si-funciona" "a-ver-si-funciona" "mame-en-java-y-accesible-por-web" "mame-en-java-y-accesible-por-web" "espana-esta-haciendo-historia" "espana-esta-haciendo-historia" "refactoring" "refactoring" "genial-eastwood" "genial-eastwood" "referer-spam" "referer-spam" "trackback-spam-solucionado" "trackback-spam-solucionado" "gripe-otra-vez" "gripe-otra-vez" "audioblog-o-podcasting-o-como-se-llame" "audioblog-o-podcasting-o-como-se-llame" "nedstat-fallando" "nedstat-fallando" "que-risa" "que-risa" "mas-spam-que-raro" "mas-spam-que-raro" "cuentos" "cuentos" "nedstat-vaya-una-mierda" "nedstat-vaya-una-mierda" "patentes-de-software" "patentes-de-software" "memoria-de-espana" "memoria-de-espana" "literatura-y-musica" "literatura-y-musica" "varias-otras-cosas" "varias-otras-cosas" "planet-murcia-primicia-mundial" "planet-murcia-primicia-mundial" "xorg-y-debian" "xorg-y-debian" "spam-el-metodo-ya-no-es-suficiente" "spam-el-metodo-ya-no-es-suficiente" "ahora-si-el-antispam-definitivo-para-wordpress-wpmorph" "ahora-si-el-antispam-definitivo-para-wordpress-wpmorph" "wpmorph-10" "wpmorph-10" "codigo-fuente-de-wpmorph" "codigo-fuente-de-wpmorph" "wpmorph-en-blggingpro" "wpmorph-en-blggingpro" "espein-is-espein" "espein-is-espein" "new-version-of-the-ccm-tutorial" "new-version-of-the-ccm-tutorial" "mas-planet-murcia" "mas-planet-murcia" "esta-noche-es-la-gran-noche" "esta-noche-es-la-gran-noche" "xsh-xml-editing-shell" "xsh-xml-editing-shell" "planet-murcia-reloaded" "planet-murcia-reloaded" "algo-en-que-pensar" "algo-en-que-pensar" "si-nadie-va-a-tomar-cerveza-yo-tampoco" "si-nadie-va-a-tomar-cerveza-yo-tampoco" "optimizando-codigo" "optimizando-codigo" "por-fin-fotos-de-los-tambores-de-este-ano" "por-fin-fotos-de-los-tambores-de-este-ano" "planeta-codigo" "planeta-codigo" "mis-coqueteos-con-amd64" "mis-coqueteos-con-amd64" "anoche-llore-con-un-libro" "anoche-llore-con-un-libro" "un-reto-crackear-mi-plugin" "un-reto-crackear-mi-plugin" "faes" "faes" "mas-cosas-en-que-pensar-el-spam-en-wordpress-realmente-un-problema" "mas-cosas-en-que-pensar-el-spam-en-wordpress-realmente-un-problema" "imprimatur" "imprimatur" "solucion-al-acertijo-sobre-wpmorph" "solucion-al-acertijo-sobre-wpmorph" "mi-otro-weblog" "mi-otro-weblog" "concurso-acm-de-programacion" "concurso-acm-de-programacion" "area-reservada-radio-3" "area-reservada-radio-3" "algunos-pensamientos-filosoficos-muerte-del-papa-y-otras-vergenzas-de-la-humanidad" "algunos-pensamientos-filosoficos-muerte-del-papa-y-otras-vergenzas-de-la-humanidad" "survey-about-components" "survey-about-components" "buenos-weblogs-ya-se-por-que" "buenos-weblogs-ya-se-por-que" "historia-de-un-programa" "historia-de-un-programa" "larry-osterman-concurrencia" "larry-osterman-concurrencia" "wpmorph-en-el-repositorio-de-plugins-de-wordpress" "wpmorph-en-el-repositorio-de-plugins-de-wordpress" "todavia-me-estoy-riendo" "todavia-me-estoy-riendo" "un-pequeno-cuento" "un-pequeno-cuento" "mi-nuevo-weblog-2" "mi-nuevo-weblog-2" "pues-no-tengo-nuevo-weblog" "pues-no-tengo-nuevo-weblog" "planets-en-barrapunto" "planets-en-barrapunto" "nueva-version-de-planet-para-planetmurcia" "nueva-version-de-planet-para-planetmurcia" "de-ratzinger-no-voy-a-hablar" "de-ratzinger-no-voy-a-hablar" "el-periodista-con-frenillo" "el-periodista-con-frenillo" "ubuntu-boot-en-35-segundos" "ubuntu-boot-en-35-segundos" "imagen" "imagen" "cosas-interesantes-software-libre-y-literatura" "cosas-interesantes-software-libre-y-literatura" "mi-quijote-tambien-en-audio" "mi-quijote-tambien-en-audio" "otro-weblog-interesante-sobre-todo-por-sus-fotos" "otro-weblog-interesante-sobre-todo-por-sus-fotos" "una-entrevista-para-info-tv" "una-entrevista-para-info-tv" "un-apunte-rapido-sobre-spam" "un-apunte-rapido-sobre-spam" "larga-noche-de-trabajo" "larga-noche-de-trabajo" "fotolog-de-jabali-digital" "fotolog-de-jabali-digital" "ultimo-mes-atareado" "ultimo-mes-atareado" "no-a-las-patentes-de-software" "no-a-las-patentes-de-software" "interesante-articulo-sobre-59-segundos-y-zapatero" "interesante-articulo-sobre-59-segundos-y-zapatero" "podcasts-en-espanol" "podcasts-en-espanol" "puente" "puente" "de-vuelta-y-botoncito-para-planet-murcia" "de-vuelta-y-botoncito-para-planet-murcia" "aciaga-vuelta-del-puente" "aciaga-vuelta-del-puente" "una-segunda-mirada-a-wpmorph" "una-segunda-mirada-a-wpmorph" "padrino-de-las-ingenierias-tecnicas-de-informatica" "padrino-de-las-ingenierias-tecnicas-de-informatica" "1518-en-mensa" "1518-en-mensa" "dias-extranos" "dias-extranos" "manana-por-fin-entrevista-en-infotv" "manana-por-fin-entrevista-en-infotv" "entrevista-muy-bien" "entrevista-muy-bien" "animo-jorge" "animo-jorge" "iii-jornadas-tecnologicas-y-de-software-libre-en-murcia" "iii-jornadas-tecnologicas-y-de-software-libre-en-murcia" "wordpress-151" "wordpress-151" "wpmorph-11-se-acerca" "wpmorph-11-se-acerca" "que-fotos-otra-vez" "que-fotos-otra-vez" "llueve" "llueve" "wpmorph-citado" "wpmorph-citado" "wpmorph-11" "wpmorph-11" "manana-el-gran-dia-para-muchos-la-graduacion" "manana-el-gran-dia-para-muchos-la-graduacion" "jorge-jorge" "jorge-jorge" "y-siguiendo-con-sitios-interesantes" "y-siguiendo-con-sitios-interesantes" "urdaci" "urdaci" "stefan-tilkov-on-rpc-web-services" "stefan-tilkov-on-rpc-web-services" "bendito-correo-de-la-universidad" "bendito-correo-de-la-universidad" "un-examen-autoreferenciado" "un-examen-autoreferenciado" "spamassassin-no-es-suficiente" "spamassassin-no-es-suficiente" "acto-de-graduacion-y-discursos-del-padrino" "acto-de-graduacion-y-discursos-del-padrino" "fotos-de-asturias" "fotos-de-asturias" "still-life-with-crows-naturaleza-muerta" "still-life-with-crows-naturaleza-muerta" "otro-dia-perdido" "otro-dia-perdido" "sicarm-o-soy-un-periodista-digital" "sicarm-o-soy-un-periodista-digital" "paradoja-de-silverman" "paradoja-de-silverman" "ni-hao" "ni-hao" "grocery-store-wars" "grocery-store-wars" "sobre-batasuna" "sobre-batasuna" "entrevista-en-infotv-disponible-en-el-web" "entrevista-en-infotv-disponible-en-el-web" "resultados-de-la-povcomp-2004" "resultados-de-la-povcomp-2004" "bendito-correo-de-la-universidad-ii" "bendito-correo-de-la-universidad-ii" "el-hombre-terminal" "el-hombre-terminal" "testigo-musical" "testigo-musical" "coincidencias-literarias" "coincidencias-literarias" "una-reunion-muy-esperada" "una-reunion-muy-esperada" "sobre-la-manifestacion-de-las-victimas-del-terrorismo" "sobre-la-manifestacion-de-las-victimas-del-terrorismo" "se-deberia-permitir-el-matrimonio-entre-catolicos" "se-deberia-permitir-el-matrimonio-entre-catolicos" "donde-dije-digo" "donde-dije-digo" "conferencias-de-solvay" "conferencias-de-solvay" "wpmorph-12" "wpmorph-12" "agua-para-todos-y-una-mierda" "agua-para-todos-y-una-mierda" "una-vision-interesante-de-la-excursion-a-salamanca" "una-vision-interesante-de-la-excursion-a-salamanca" "una-muestra-de-cuan-geek-se-puede-ser" "una-muestra-de-cuan-geek-se-puede-ser" "gran-manifestacion-a-favor-del-matrimonio-y-de-la-infancia" "gran-manifestacion-a-favor-del-matrimonio-y-de-la-infancia" "mi-primer-ubugtu" "mi-primer-ubugtu" "el-turismo-de-manifestacion" "el-turismo-de-manifestacion" "de-cine" "de-cine" "rebelate-frente-a-la-caza-de-brujas-antidemocratica-lanzada-contra-el-psiquiatra-aquilino-polaino" "rebelate-frente-a-la-caza-de-brujas-antidemocratica-lanzada-contra-el-psiquiatra-aquilino-polaino" "windows-10" "windows-10" "trabajo-en-la-tesis" "trabajo-en-la-tesis" "libcult" "libcult" "pedro-martinez-en-el-summer-of-code-de-google" "pedro-martinez-en-el-summer-of-code-de-google" "weblogs-en-los-dias-caldum-2005" "weblogs-en-los-dias-caldum-2005" "metodos-matematicos" "metodos-matematicos" "wpcache" "wpcache" "sorprendido-con-planet-murcia" "sorprendido-con-planet-murcia" "rss-30-o-usando-xml-para-lo-que-se-debe" "rss-30-o-usando-xml-para-lo-que-se-debe" "otro-reto-de-programacion" "otro-reto-de-programacion" "esto-si-que-es-una-buena-noticia" "esto-si-que-es-una-buena-noticia" "lo-siento-no-he-podido-parar-de-reir" "lo-siento-no-he-podido-parar-de-reir" "triste-dia" "triste-dia" "corte-de-luz" "corte-de-luz" "presentacion-de-manana-en-los-dias-caldum" "presentacion-de-manana-en-los-dias-caldum" "presentacion-de-next-30-de-steve-jobs" "presentacion-de-next-30-de-steve-jobs" "interesantes-verbos-lockear-y-tipear" "interesantes-verbos-lockear-y-tipear" "the-data-compression-news-blog" "the-data-compression-news-blog" "buenas-recomendaciones-literarias" "buenas-recomendaciones-literarias" "verano" "verano" "generative-programming" "generative-programming" "intentional-programming" "intentional-programming" "de-por-que-me-gustaria-vivir-en-vitoria" "de-por-que-me-gustaria-vivir-en-vitoria" "no-al-reggaeton" "no-al-reggaeton" "feynman-on-space-shuttles" "feynman-on-space-shuttles" "impressive-openccm-090-release" "impressive-openccm-090-release" "egipto" "egipto" "libro-de-programacion-de-gnome-version-003" "libro-de-programacion-de-gnome-version-003" "vuelta-de-egipto" "vuelta-de-egipto" "cortos-rodados-al-reves" "cortos-rodados-al-reves" "el-enigma-vivaldi" "el-enigma-vivaldi" "antiperiodismo-y-el-inefable-libertad-digital" "antiperiodismo-y-el-inefable-libertad-digital" "mula-de-noche" "mula-de-noche" "mi-primer-rayo" "mi-primer-rayo" "un-pequeno-acertijo" "un-pequeno-acertijo" "ricardo-galli-genial" "ricardo-galli-genial" "dios-los-cria-nunca-mejor-dicho" "dios-los-cria-nunca-mejor-dicho" "dos-dias-agotadores" "dos-dias-agotadores" "implicaciones-tecnologicas" "implicaciones-tecnologicas" "censorship-causes-blindness" "censorship-causes-blindness" "ayer-en-sierra-espuna" "ayer-en-sierra-espuna" "un-ano-de-weblog" "un-ano-de-weblog" "don-box-y-scheme" "don-box-y-scheme" "las-perdedoras" "las-perdedoras" "dos-articulos-interesantes-de-fotografia" "dos-articulos-interesantes-de-fotografia" "eclipse" "eclipse" "mal-por-el-tripartito-catalan" "mal-por-el-tripartito-catalan" "mas-enlaces-de-fotografia" "mas-enlaces-de-fotografia" "de-nuevo-dan-brown" "de-nuevo-dan-brown" "luna-y-castillo" "luna-y-castillo" "meme-de-traduccion" "meme-de-traduccion" "otro-magnifico-fotolog" "otro-magnifico-fotolog" "opel-vectra-30-cdti-v6-24v" "opel-vectra-30-cdti-v6-24v" "yo-mato" "yo-mato" "gimp-24" "gimp-24" "corba-reborn" "corba-reborn" "el-brujo" "el-brujo" "mas-fotos-de-mula" "mas-fotos-de-mula" "cambios-a-planet-murcia" "cambios-a-planet-murcia" "concurso-de-fotografia" "concurso-de-fotografia" "la-cope-otra-vez" "la-cope-otra-vez" "ruby-on-rails" "ruby-on-rails" "gato-en-ventana" "gato-en-ventana" "sixeyed-monster" "sixeyed-monster" "lomografia-para-gimp" "lomografia-para-gimp" "practicas-de-redes" "practicas-de-redes" "mas-sobre-lomografia" "mas-sobre-lomografia" "mantenimiento" "mantenimiento" "mantenimiento-superado" "mantenimiento-superado" "canon-eos-350d-o-nikon-d50" "canon-eos-350d-o-nikon-d50" "interesting-post-on-xml-messaging-by-stefan-tilkov" "interesting-post-on-xml-messaging-by-stefan-tilkov" "caleido" "caleido" "caleido2" "caleido2" "eduardo-haro-tecglen" "eduardo-haro-tecglen" "tennessee03" "tennessee03" "sistemas-distribuidos" "sistemas-distribuidos" "sparklines" "sparklines" "working" "working" "flickr--critique-for-starters" "flickr--critique-for-starters" "ouch-oh-well-good-shots" "ouch-oh-well-good-shots" "el-lenguaje-lua" "el-lenguaje-lua" "concurso-de-fotografia-digital-municipios-de-la-region-de-murcia-un-accesit" "concurso-de-fotografia-digital-municipios-de-la-region-de-murcia-un-accesit" "seherezade" "seherezade" "linux-just-works" "linux-just-works" "trabajos-de-sistemas-distribuidos" "trabajos-de-sistemas-distribuidos" "cangrejo-vs-tuberia" "cangrejo-vs-tuberia" "ubuntu-dapper-drake" "ubuntu-dapper-drake" "estatuto" "estatuto" "simcam" "simcam" "skyclockelevator" "skyclockelevator" "sepia-hightech-candle" "sepia-hightech-candle" "nuevo-weblog" "nuevo-weblog" "este-es-un-weblog-politico" "este-es-un-weblog-politico" "practicas-de-sistemas-distribuidos" "practicas-de-sistemas-distribuidos" "concurso-de-fotografia-y-canon-350d" "concurso-de-fotografia-y-canon-350d" "jardin" "jardin" "mi-coche" "mi-coche" "un-dia-de-trabajo-con-mi-tesis" "un-dia-de-trabajo-con-mi-tesis" "my-desk" "my-desk" "castillo" "castillo" "match-point" "match-point" "el-perfume" "el-perfume" "trapped" "trapped" "one-out-of-many" "one-out-of-many" "horrores-ortograficos" "horrores-ortograficos" "castillo--raw" "castillo--raw" "flickr-most-interesting" "flickr-most-interesting" "que-hacer-con-34-millones-de-euros" "que-hacer-con-34-millones-de-euros" "fiestas-de-san-alberto-en-informatica" "fiestas-de-san-alberto-en-informatica" "de-nuevo-a-paris" "de-nuevo-a-paris" "el-jardinero-fiel" "el-jardinero-fiel" "hackeado" "hackeado" "eiffel-1" "eiffel-1" "arriving" "arriving" "sony-bravia" "sony-bravia" "sacre-coeur" "sacre-coeur" "sacre-coeur-noche" "sacre-coeur-noche" "vuelta-de-paris" "vuelta-de-paris" "banco-patos-y-niebla" "banco-patos-y-niebla" "untitled" "untitled" "perdida-de-correos" "perdida-de-correos" "microsoft-tira-cinco-anos-de-trabajo-a-la-papelera-de-reciclaje" "microsoft-tira-cinco-anos-de-trabajo-a-la-papelera-de-reciclaje" "plan-de-fomento-de-la-lectura" "plan-de-fomento-de-la-lectura" "eiffel-2" "eiffel-2" "explicacion-de-por-que-hemos-perdido-correos" "explicacion-de-por-que-hemos-perdido-correos" "paris-post-2005-11-28" "paris-post-2005-11-28" "my-nikon-d50" "my-nikon-d50" "broken" "broken" "el-nucleo-de-linux-independiente-de-smp" "el-nucleo-de-linux-independiente-de-smp" "torre-eiffel-detalle-ii" "torre-eiffel-detalle-ii" "vger" "vger" "mar" "mar" "modding--experto-en-ordenadores" "modding--experto-en-ordenadores" "henri-cartierbresson" "henri-cartierbresson" "luna" "luna" "vuelta-del-puente" "vuelta-del-puente" "my-friend-the-bee" "my-friend-the-bee" "abeja-ii" "abeja-ii" "diwa-le-da-la-medalla-de-oro-a-la-nikon-d50" "diwa-le-da-la-medalla-de-oro-a-la-nikon-d50" "teresa-isasi-la-presencia-invisible" "teresa-isasi-la-presencia-invisible" "plaza-de-toros-de-ronda-detalle" "plaza-de-toros-de-ronda-detalle" "calle-de-nerja" "calle-de-nerja" "jarras--jars" "jarras--jars" "la-vida-secreta-de-las-palabras" "la-vida-secreta-de-las-palabras" "jggweb-analiza-una-foto-que-le-envie" "jggweb-analiza-una-foto-que-le-envie" "sonrisa" "sonrisa" "window--ventana" "window--ventana" "tesis-de-juan-peinador" "tesis-de-juan-peinador" "luna-por-fin" "luna-por-fin" "anul--noom" "anul--noom" "yo-trabajando-y-yo-viendo-la-tele" "yo-trabajando-y-yo-viendo-la-tele" "mi-gata--my-cat" "mi-gata--my-cat" "the-amazing-case-of-the-clone-students" "the-amazing-case-of-the-clone-students" "my-fathers-paintings--las-pinturas-de-mi-padre" "my-fathers-paintings--las-pinturas-de-mi-padre" "yin-yang-moon" "yin-yang-moon" "fallos-de-seguridad-en-xbox" "fallos-de-seguridad-en-xbox" "i-wish-i-could-go-out--me-gustaria-poder-salir" "i-wish-i-could-go-out--me-gustaria-poder-salir" "como-reacciona-bill-gates-ante-un-pantallazo-azul" "como-reacciona-bill-gates-ante-un-pantallazo-azul" "taking-the-pulse-to-the-city" "taking-the-pulse-to-the-city" "flor" "flor" "flor--flower-2" "flor--flower-2" "post-2005-12-22" "post-2005-12-22" "casa-de-emma--emmas-house" "casa-de-emma--emmas-house" "the-picard-song" "the-picard-song" "emma-putting-the-scarf-on-michelin--emma-poniendole-bien-la-bufanda-a-michelin" "emma-putting-the-scarf-on-michelin--emma-poniendole-bien-la-bufanda-a-michelin" "paz--peace" "paz--peace" "luces-de-navidad--xmas-lights" "luces-de-navidad--xmas-lights" "wordpress-20" "wordpress-20" "the-closers" "the-closers" "antispam-wpmorph-15" "antispam-wpmorph-15" "vendo-compactflash-1gb" "vendo-compactflash-1gb" "emmas-eye" "emmas-eye" "mosaico" "mosaico" "2006" "2006" "hotel" "hotel" "gota--drip" "gota--drip" "hey-johnny-look-hes-going-to-take-us-a-photo--eh-juan-mira-nos-van-a-hacer-una-foto" "hey-johnny-look-hes-going-to-take-us-a-photo--eh-juan-mira-nos-van-a-hacer-una-foto" "a-view-of-the-spanish-antitobacco-law--vision-de-la-ley-antitabaco-espanola" "a-view-of-the-spanish-antitobacco-law--vision-de-la-ley-antitabaco-espanola" "three--tres" "three--tres" "nouvelle-cuisine" "nouvelle-cuisine" "paloma--dove" "paloma--dove" "look-what-i-found-in-my-mail-p" "look-what-i-found-in-my-mail-p" "epoca-seca" "epoca-seca" "mas-sobre-la-nikon-d50" "mas-sobre-la-nikon-d50" "herbie-hancock" "herbie-hancock" "a-new-religion" "a-new-religion" "taller-de-txema-salvans" "taller-de-txema-salvans" "fotos-de-marina-cano" "fotos-de-marina-cano" "best-of-google-video" "best-of-google-video" "increible-the-year-in-pictures-2005" "increible-the-year-in-pictures-2005" "walking" "walking" "busy-aka-yeah-doing-a-phd-is-hard" "busy-aka-yeah-doing-a-phd-is-hard" "winter-is-not-so-bad" "winter-is-not-so-bad" "checkershadow" "checkershadow" "apuntes-culturales" "apuntes-culturales" "jose-gomez-isla-en-fotoencuentros-2006" "jose-gomez-isla-en-fotoencuentros-2006" "sunset-after-the-snow" "sunset-after-the-snow" "mula-nevada" "mula-nevada" "naranjas" "naranjas" "limones" "limones" "volando-libre" "volando-libre" "oops-wrong-way" "oops-wrong-way" "corrigiendo-guioness-shell" "corrigiendo-guioness-shell" "otro-nuevo-uso-para-el-movil-" "otro-nuevo-uso-para-el-movil-" "cuidado-otro-libro-de-peter-harris" "cuidado-otro-libro-de-peter-harris" "articulo-para-las-jornadas-de-educacion-de-la-informatica-jenui-2006" "articulo-para-las-jornadas-de-educacion-de-la-informatica-jenui-2006" "qemu" "qemu" "freenx" "freenx" "de-regalo-dos-analisis-de-king-kong" "de-regalo-dos-analisis-de-king-kong" "entrevista-para-la-verdad" "entrevista-para-la-verdad" "eggpain-is-diferen" "eggpain-is-diferen" "cambio-de-aspecto-a-planet-murcia" "cambio-de-aspecto-a-planet-murcia" "los-gigantes-del-quijote-en-el-siglo-21--quixote-giants-in-the-21st-century" "los-gigantes-del-quijote-en-el-siglo-21--quixote-giants-in-the-21st-century" "iconos-para-planet-murcia" "iconos-para-planet-murcia" "canon-eos-30d" "canon-eos-30d" "jornadas-mundo-blog" "jornadas-mundo-blog" "magnifico-descubrimiento-rionnu" "magnifico-descubrimiento-rionnu" "inkscape" "inkscape" "amazing-circles" "amazing-circles" "imagen-de-flickr-citada" "imagen-de-flickr-citada" "everything-comes-to-an-end" "everything-comes-to-an-end" "tornado" "tornado" "awstats" "awstats" "hoy-comienza-mundoblog06" "hoy-comienza-mundoblog06" "cuando-creia-que-habia-visto-todo-lo-raro-que-se-podia-hacer-con-la-informatica" "cuando-creia-que-habia-visto-todo-lo-raro-que-se-podia-hacer-con-la-informatica" "mundoblogs06-dia-1" "mundoblogs06-dia-1" "planet-murcia-alcanza-pr-5" "planet-murcia-alcanza-pr-5" "presentation-zen-las-presentaciones-son-importantes" "presentation-zen-las-presentaciones-son-importantes" "mundoblogs-en-el-faro" "mundoblogs-en-el-faro" "mi-presentacion-de-esta-tarde-en-mundoblog" "mi-presentacion-de-esta-tarde-en-mundoblog" "homenaje-a-chema-madoz--chema-madoz-tribute" "homenaje-a-chema-madoz--chema-madoz-tribute" "de-vuelta-del-fin-de-semana" "de-vuelta-del-fin-de-semana" "poniendome-al-dia" "poniendome-al-dia" "julian-dirigiendo-la-banda-de-jumilla" "julian-dirigiendo-la-banda-de-jumilla" "nueva-imagen-del-departamento" "nueva-imagen-del-departamento" "entrevista-para-el-programa-la-chuleta-en-canal-6-television" "entrevista-para-el-programa-la-chuleta-en-canal-6-television" "estupideces-de-flickr" "estupideces-de-flickr" "xgl--compiz" "xgl--compiz" "fotos-de-balistica" "fotos-de-balistica" "conexiones-ssh-que-se-cortan" "conexiones-ssh-que-se-cortan" "xgl--compiz-y-2" "xgl--compiz-y-2" "following-the-clouds" "following-the-clouds" "juanan-y-yo-en-mundoblog" "juanan-y-yo-en-mundoblog" "jggweb-esta-que-se-sale" "jggweb-esta-que-se-sale" "muchas-gracias-linkita" "muchas-gracias-linkita" "blur-flower" "blur-flower" "contenido-pornografico-en-planet-murcia-os-pido-consejo" "contenido-pornografico-en-planet-murcia-os-pido-consejo" "walking-ii" "walking-ii" "error-inexplicable-del-dia" "error-inexplicable-del-dia" "el-ipod-de-microsoft" "el-ipod-de-microsoft" "planet-murcia-sin-imagenes" "planet-murcia-sin-imagenes" "gaviota--seagull" "gaviota--seagull" "ganadores-del-concurso-de-fotografia-de-biologia" "ganadores-del-concurso-de-fotografia-de-biologia" "house" "house" "vuelta-de-casi-todas-las-imagenes-al-planet-murcia" "vuelta-de-casi-todas-las-imagenes-al-planet-murcia" "vista-desde-ronda" "vista-desde-ronda" "140-caballos" "140-caballos" "peach-blossoms-with-guest--flores-de-melocoton-con-invitado" "peach-blossoms-with-guest--flores-de-melocoton-con-invitado" "done-with-this-one" "done-with-this-one" "man-thing" "man-thing" "nota-mental-mejores-ps-y-pdf-con-latex" "nota-mental-mejores-ps-y-pdf-con-latex" "competicion-conquest-de-la-asignatura-sistemas-distribuidos-de-5" "competicion-conquest-de-la-asignatura-sistemas-distribuidos-de-5" "conferencia-en-almeria" "conferencia-en-almeria" "entrevista-para-canal-6" "entrevista-para-canal-6" "raining" "raining" "eta-anuncia-un-alto-el-fuego-permanente" "eta-anuncia-un-alto-el-fuego-permanente" "sobre-el-alto-el-fuego-permanente-de-eta" "sobre-el-alto-el-fuego-permanente-de-eta" "mas-sobre-los-comunicados-de-eta" "mas-sobre-los-comunicados-de-eta" "entrevista-en-la-verdad" "entrevista-en-la-verdad" "emma-received-her-birthday-present" "emma-received-her-birthday-present" "volver" "volver" "stravaganza" "stravaganza" "texturas-de-la-mancha" "texturas-de-la-mancha" "lonely-tree" "lonely-tree" "y-manana-el-eclipse-solar" "y-manana-el-eclipse-solar" "importante-mudanza" "importante-mudanza" "mi-vista-del-eclipse-solar" "mi-vista-del-eclipse-solar" "sol--300mm" "sol--300mm" "most-interesting-photos-on-flickr-feb-2006" "most-interesting-photos-on-flickr-feb-2006" "jornadas-de-almeria-en-barrapunto" "jornadas-de-almeria-en-barrapunto" "backup-para-tu-flickr" "backup-para-tu-flickr" "apagon-de-este-blog-y-de-planet-murcia" "apagon-de-este-blog-y-de-planet-murcia" "mas-cambios" "mas-cambios" "late-evening-at-the-river--atardecer-en-el-rio" "late-evening-at-the-river--atardecer-en-el-rio" "ya-estamos-de-vuelta" "ya-estamos-de-vuelta" "post-2006-4-4" "post-2006-4-4" "la-mancha-iv" "la-mancha-iv" "ruby-y-los-casinos" "ruby-y-los-casinos" "quien-si-no-la-cope" "quien-si-no-la-cope" "esta-tarde-otro-terremoto" "esta-tarde-otro-terremoto" "charla-de-esta-tarde-en-almeria" "charla-de-esta-tarde-en-almeria" "stars" "stars" "vuelta-de-almeria" "vuelta-de-almeria" "tambores-en-mula-2006" "tambores-en-mula-2006" "maquinas-increibles" "maquinas-increibles" "sun--sol" "sun--sol" "wsdeadstar" "wsdeadstar" "doing-a-phd-is-hard-ii" "doing-a-phd-is-hard-ii" "calm-and-curiosity" "calm-and-curiosity" "padre-e-hijo--father-and-son" "padre-e-hijo--father-and-son" "-and-the-ladybug-prepares-herself-for-another-long-night" "-and-the-ladybug-prepares-herself-for-another-long-night" "una-buena-guia-para-comprar-camaras-digitales" "una-buena-guia-para-comprar-camaras-digitales" "interesantisimo-articulo-sobre-como-optimizar-ubuntu" "interesantisimo-articulo-sobre-como-optimizar-ubuntu" "hoy-me-han-desaparecido-todos-los-mensajes-de-hotmail" "hoy-me-han-desaparecido-todos-los-mensajes-de-hotmail" "no-os-vais-a-creer-lo-que-es-esto" "no-os-vais-a-creer-lo-que-es-esto" "what-are-you-doing-" "what-are-you-doing-" "post-2006-4-24" "post-2006-4-24" "iguana" "iguana" "grano-de-sal-microcomposicion" "grano-de-sal-microcomposicion" "el-pequeno-dictador" "el-pequeno-dictador" "stormy-night-over-mula" "stormy-night-over-mula" "viaje-de-puente" "viaje-de-puente" "flores-en-la-playa-de-bolonia-cadiz" "flores-en-la-playa-de-bolonia-cadiz" "descubrimiento-fotografico" "descubrimiento-fotografico" "que-sorpresa" "que-sorpresa" "de-lo-bien-que-va-mula" "de-lo-bien-que-va-mula" "mas-sobre-mula-y-aviso-nada-que-ver-con-emule" "mas-sobre-mula-y-aviso-nada-que-ver-con-emule" "post-2006-5-4" "post-2006-5-4" "area-reservada-radio-3-de-nuevo" "area-reservada-radio-3-de-nuevo" "colorful-flower-crop" "colorful-flower-crop" "post-2006-5-6" "post-2006-5-6" "presagio" "presagio" "un-deleite-anuncio-del-audi-rs4" "un-deleite-anuncio-del-audi-rs4" "fallen" "fallen" "y-hablando-de-radio-3-buena-musica-y-deleite-para-los-sentidos" "y-hablando-de-radio-3-buena-musica-y-deleite-para-los-sentidos" "red-green-blue" "red-green-blue" "conoceis-al-baron-de-muchausen" "conoceis-al-baron-de-muchausen" "oops-its-starting-to-rain-id-better-go-home" "oops-its-starting-to-rain-id-better-go-home" "post-2006-5-12" "post-2006-5-12" "arana" "arana" "melissa-p" "melissa-p" "modern-communications" "modern-communications" "post-2006-5-16" "post-2006-5-16" "exposicion-de-jean-miotte" "exposicion-de-jean-miotte" "como-hacer-una-caja-de-fotografiar-softbox" "como-hacer-una-caja-de-fotografiar-softbox" "tree-lying-on-a-red-carpet" "tree-lying-on-a-red-carpet" "hung" "hung" "foto-de-flickr-en-otro-blog" "foto-de-flickr-en-otro-blog" "cagada-del-psc-el-pp-usara-tu-no-contra-cataluna" "cagada-del-psc-el-pp-usara-tu-no-contra-cataluna" "bienvenido-a-casa" "bienvenido-a-casa" "caeli" "caeli" "marina-abstract" "marina-abstract" "fotogenio06-en-mazarron" "fotogenio06-en-mazarron" "robert--shana-parkeharrison" "robert--shana-parkeharrison" "facultad-nueva" "facultad-nueva" "lantana-y-abeja-buscando" "lantana-y-abeja-buscando" "foto-de-la-facultad-nueva" "foto-de-la-facultad-nueva" "white-and-yellow" "white-and-yellow" "a-touch-of-red--un-toque-de-rojo" "a-touch-of-red--un-toque-de-rojo" "anochecer-en-mula" "anochecer-en-mula" "mula" "mula" "se-precisan-hombres-espanoles-para-trabajar-en-limpieza-industrial" "se-precisan-hombres-espanoles-para-trabajar-en-limpieza-industrial" "mi-primera-mariposa--my-first-butterfly" "mi-primera-mariposa--my-first-butterfly" "nikon-d50-uno-de-los-mejores-analisis-que-he-visto" "nikon-d50-uno-de-los-mejores-analisis-que-he-visto" "mi-primer-fondo-de-pantalla-en-artgnomeorg" "mi-primer-fondo-de-pantalla-en-artgnomeorg" "de-las-vergenzas-de-la-universidad" "de-las-vergenzas-de-la-universidad" "caught" "caught" "salinas-de-san-pedro-murcia" "salinas-de-san-pedro-murcia" "jump" "jump" "those-drops" "those-drops" "sergio-de-la-torre" "sergio-de-la-torre" "post-2006-6-3" "post-2006-6-3" "trees-thinking" "trees-thinking" "una-vuelta-por-la-feria-del-libro-de-madrid" "una-vuelta-por-la-feria-del-libro-de-madrid" "diagonal-beauty" "diagonal-beauty" "publicidad-al-borde-de-la-mentira" "publicidad-al-borde-de-la-mentira" "industrialization-taking-over-nature-aka-more-giants-against-poor-xxi-centurys-don-quixote" "industrialization-taking-over-nature-aka-more-giants-against-poor-xxi-centurys-don-quixote" "the-road-ahead" "the-road-ahead" "perl-en-latin" "perl-en-latin" "always-amazed-at-the-beauty-of-nature" "always-amazed-at-the-beauty-of-nature" "zafiro" "zafiro" "unicorn" "unicorn" "groove-collective" "groove-collective" "tristezas" "tristezas" "chinon-ce4" "chinon-ce4" "anatomy-of-a-care" "anatomy-of-a-care" "mi-gran-estadista-particular-al-que-quiero-mucho" "mi-gran-estadista-particular-al-que-quiero-mucho" "post-2006-6-17" "post-2006-6-17" "sister" "sister" "vendo-nikon-f75-vendida" "vendo-nikon-f75-vendida" "vendo-sigma-70300-apo-macro-super-ii-nikon-vendido" "vendo-sigma-70300-apo-macro-super-ii-nikon-vendido" "post-2006-6-19" "post-2006-6-19" "looking-through-third-in-the-series" "looking-through-third-in-the-series" "musica-del-anuncio-del-nokia-6131" "musica-del-anuncio-del-nokia-6131" "losantos" "losantos" "post-2006-6-22" "post-2006-6-22" "dinner" "dinner" "what" "what" "articulo-de-emma-en-capgemini" "articulo-de-emma-en-capgemini" "interesantes-estadisticas-del-blog" "interesantes-estadisticas-del-blog" "mi-nuevo-juguete" "mi-nuevo-juguete" "bokeh-so-nice" "bokeh-so-nice" "oruga" "oruga" "on-reach" "on-reach" "quiet-landscape" "quiet-landscape" "against-black" "against-black" "expresso" "expresso" "conversacion-graciosa" "conversacion-graciosa" "spotlight-en-utata" "spotlight-en-utata" "nunca-te-olvidare" "nunca-te-olvidare" "capparis-spinosa" "capparis-spinosa" "from-the-darkness" "from-the-darkness" "an-universe-within-the-sun" "an-universe-within-the-sun" "i-miss-spring" "i-miss-spring" "lo-siento-solo-fotos-por-ahora" "lo-siento-solo-fotos-por-ahora" "flying-in-blue" "flying-in-blue" "post-2006-8-4" "post-2006-8-4" "trabajo-de-verano" "trabajo-de-verano" "mas-de-c" "mas-de-c" "amanecer-en-los-alcazares" "amanecer-en-los-alcazares" "como-crear-una-camara-con-una-caja-de-cerillas" "como-crear-una-camara-con-una-caja-de-cerillas" "solucion-al-acertijo-de-c" "solucion-al-acertijo-de-c" "post-2006-8-18" "post-2006-8-18" "butterfly-and-sky" "butterfly-and-sky" "contenido-sensible-en-el-pc" "contenido-sensible-en-el-pc" "magnifica-vista-del-mediterraneo" "magnifica-vista-del-mediterraneo" "post-2006-9-4" "post-2006-9-4" "post-2006-9-6" "post-2006-9-6" "el-tio-mas-tacano-del-mundo" "el-tio-mas-tacano-del-mundo" "flying-clouds" "flying-clouds" "lonely-playground" "lonely-playground" "sobre-los-incendios-de-galicia-de-este-verano-y-la-responsabilidad-del-pp" "sobre-los-incendios-de-galicia-de-este-verano-y-la-responsabilidad-del-pp" "alguien-que-se-casa" "alguien-que-se-casa" "sigma-70300-apo-macro-super-ii--nikon" "sigma-70300-apo-macro-super-ii--nikon" "solo-en-espana" "solo-en-espana" "ready" "ready" "tres" "tres" "fotos-de-irenas" "fotos-de-irenas" "sobre-la-politica-y-los-pueblos" "sobre-la-politica-y-los-pueblos" "nikon-em-bokeh" "nikon-em-bokeh" "post-2006-9-24" "post-2006-9-24" "vendo-reflex-chinon-cp7m-multiprogram" "vendo-reflex-chinon-cp7m-multiprogram" "olympus-xa" "olympus-xa" "corrupcion-en-miami-miami-vice" "corrupcion-en-miami-miami-vice" "errores-en-planet-murcia" "errores-en-planet-murcia" "the-one-with-the-red-thread" "the-one-with-the-red-thread" "localizacion-geografica-y-flickr" "localizacion-geografica-y-flickr" "it-rained-today" "it-rained-today" "fireworks" "fireworks" "planet-murcia-actualizado-a-planet-20" "planet-murcia-actualizado-a-planet-20" "broken-post-2006-10-4" "broken-post-2006-10-4" "post-2006-10-4" "post-2006-10-4" "mula-en-internet" "mula-en-internet" "ghost-dog-the-way-of-the-samurai" "ghost-dog-the-way-of-the-samurai" "-be-water-my-friend" "-be-water-my-friend" "emma-por-la-manana" "emma-por-la-manana" "oferta-de-trabajo-para-chica-diplomada-en-optica" "oferta-de-trabajo-para-chica-diplomada-en-optica" "trabajando-y-escuchando-la-cnn" "trabajando-y-escuchando-la-cnn" "kathleen-connallys-a-walk-through-durham-township-pennsylvania" "kathleen-connallys-a-walk-through-durham-township-pennsylvania" "fowler-inversion-del-control" "fowler-inversion-del-control" "post-2006-10-11" "post-2006-10-11" "correos-otra-vez" "correos-otra-vez" "the-cloud-that-escaped-from-the-landscape" "the-cloud-that-escaped-from-the-landscape" "lo-que-esta-sembrando-estados-unidos" "lo-que-esta-sembrando-estados-unidos" "la-ultima-oleada-de-spam" "la-ultima-oleada-de-spam" "sobre-la-economia-espanola" "sobre-la-economia-espanola" "curiosidades-politicas-de-la-wikipedia" "curiosidades-politicas-de-la-wikipedia" "ya-se-por-que-rubalcaba-no-gusta-a-la-oposicion" "ya-se-por-que-rubalcaba-no-gusta-a-la-oposicion" "putin-afirma-envidiar-al-presidente-israeli-por-ser-capaz-de-violar-a-diez-mujeres" "putin-afirma-envidiar-al-presidente-israeli-por-ser-capaz-de-violar-a-diez-mujeres" "ser-profesor-tiene-sus-cosas-buenas" "ser-profesor-tiene-sus-cosas-buenas" "planet-murcia-en-la-chuleta" "planet-murcia-en-la-chuleta" "willy-ronis-en-el-espacioav-de-murcia" "willy-ronis-en-el-espacioav-de-murcia" "gracias-naufrago" "gracias-naufrago" "exposicion-de-cristobal-gabarron" "exposicion-de-cristobal-gabarron" "planet-murcia-en-la-chuleta-2" "planet-murcia-en-la-chuleta-2" "usando-linux-para-arreglar-un-usb-roto" "usando-linux-para-arreglar-un-usb-roto" "fall" "fall" "mierda-en-la-bum" "mierda-en-la-bum" "surprise" "surprise" "esperando--waiting" "esperando--waiting" "boda-de-mi-hermana" "boda-de-mi-hermana" "boda-de-mi-hermana-post-2006-10-30" "boda-de-mi-hermana-post-2006-10-30" "paisaje-de-mula" "paisaje-de-mula" "ahh-the-pleasure-of-flying-in-the-evening" "ahh-the-pleasure-of-flying-in-the-evening" "133080" "133080" "tired-in-a-party" "tired-in-a-party" "heaven-on-earth" "heaven-on-earth" "dinner-at-lorenzos-epilogue" "dinner-at-lorenzos-epilogue" "cache-de-dns-en-dos-minutos-con-linux-ubuntu" "cache-de-dns-en-dos-minutos-con-linux-ubuntu" "tree-by-the-road" "tree-by-the-road" "nos-vamos-a-lisboa" "nos-vamos-a-lisboa" "emma" "emma" "anuncio-de-gears-of-war" "anuncio-de-gears-of-war" "a-perfect-day-in-lisbon" "a-perfect-day-in-lisbon" "hard-rock-cafe-lisbon" "hard-rock-cafe-lisbon" "lisboa-tipica" "lisboa-tipica" "mercado-medieval-en-caravaca" "mercado-medieval-en-caravaca" "self-portrait-autumn" "self-portrait-autumn" "venta-cosina-1935-af-f3545-para-nikon-af-vendido" "venta-cosina-1935-af-f3545-para-nikon-af-vendido" "its-getting-cold" "its-getting-cold" "old-lisbon-ii" "old-lisbon-ii" "ouch" "ouch" "charleston-cafe" "charleston-cafe" "emma-a-traves-de-la-d200" "emma-a-traves-de-la-d200" "fence" "fence" "feliz-2007" "feliz-2007" "relato-de-lola-gracia" "relato-de-lola-gracia" "luna-post-2007-1-3" "luna-post-2007-1-3" "instituto-cervantes-madrid" "instituto-cervantes-madrid" "metropolis" "metropolis" "butterfly" "butterfly" "con-vergenza-comienzo-de-nuevo" "con-vergenza-comienzo-de-nuevo" "fuente-caputa-mula-murcia" "fuente-caputa-mula-murcia" "a-comer-crop" "a-comer-crop" "si-no-cede-le-pondran-bombas-y-si-no-le-ponen-bombas-habra-cedido" "si-no-cede-le-pondran-bombas-y-si-no-le-ponen-bombas-habra-cedido" "erbutco-31" "erbutco-31" "intimidacion" "intimidacion" "funcion-c-rara-del-dia" "funcion-c-rara-del-dia" "atardecer-en-mula" "atardecer-en-mula" "costa-da-caparica-lisboa-portugal" "costa-da-caparica-lisboa-portugal" "happy" "happy" "post-2007-1-29" "post-2007-1-29" "polo" "polo" "yyyyyyyy" "yyyyyyyy" "a-pleasant-evening" "a-pleasant-evening" "the-s-stands-for-simple" "the-s-stands-for-simple" "magnifica-lola-gracia" "magnifica-lola-gracia" "camaras-extranas" "camaras-extranas" "post-2007-2-11" "post-2007-2-11" "pure-fire-una-recopilacion-de-gilles-peterson" "pure-fire-una-recopilacion-de-gilles-peterson" "fotoencuentros07" "fotoencuentros07" "super-teleobjetivos" "super-teleobjetivos" "three-tree" "three-tree" "different" "different" "procesado-en-batch-de-imagenes-con-the-gimp" "procesado-en-batch-de-imagenes-con-the-gimp" "el-blog-del-nino-gilipollas-que-queria-volar" "el-blog-del-nino-gilipollas-que-queria-volar" "post-2007-2-18" "post-2007-2-18" "there-is-always-one-that-reaches-the-most" "there-is-always-one-that-reaches-the-most" "best-of-flickr-2006" "best-of-flickr-2006" "post-2007-2-21" "post-2007-2-21" "encuentros-nacionales-fotogenio-mazarron-2007" "encuentros-nacionales-fotogenio-mazarron-2007" "weston-euro-master" "weston-euro-master" "flowers-in-the-evening" "flowers-in-the-evening" "lomo-fisheye-through-the-viewfinder-or-the-magic-crystal-ball" "lomo-fisheye-through-the-viewfinder-or-the-magic-crystal-ball" "viento-en-popa" "viento-en-popa" "post-2007-2-26" "post-2007-2-26" "sad" "sad" "cuando-google-llama-a-tu-puerta" "cuando-google-llama-a-tu-puerta" "problemas-con-los-comentarios" "problemas-con-los-comentarios" "olivos" "olivos" "field-and-a-road" "field-and-a-road" "mi-amigo-del-coche-zorki4--jupiter8" "mi-amigo-del-coche-zorki4--jupiter8" "sleeping-giant" "sleeping-giant" "the-quietness-of-the-sunset" "the-quietness-of-the-sunset" "mula-plaza-del-ayuntamiento" "mula-plaza-del-ayuntamiento" "car-wash" "car-wash" "nightwalk" "nightwalk" "let-me-see" "let-me-see" "vista-del-castillo-de-caravaca" "vista-del-castillo-de-caravaca" "shadowshighlights-en-gimp" "shadowshighlights-en-gimp" "lo-ultimo-en-spam-spam-en-technorati-link-to" "lo-ultimo-en-spam-spam-en-technorati-link-to" "jose-pepe-bono-en-caravaca" "jose-pepe-bono-en-caravaca" "el-cachondo-de-alan-cox" "el-cachondo-de-alan-cox" "llamamelolacom-muy-interesante" "llamamelolacom-muy-interesante" "butterflies" "butterflies" "park-gel-barcelona" "park-gel-barcelona" "sobre-la-perdida-de-tiempo-en-las-universidades-y-en-todos-sitios-por-extension" "sobre-la-perdida-de-tiempo-en-las-universidades-y-en-todos-sitios-por-extension" "alone-in-the-dark" "alone-in-the-dark" "atardecer-en-las-salinas" "atardecer-en-las-salinas" "mula-noche-y-luna" "mula-noche-y-luna" "manipulacion-en-telemadrid" "manipulacion-en-telemadrid" "barcelona-desde-montjuic" "barcelona-desde-montjuic" "nach-google-zrich" "nach-google-zrich" "interview--google-zrich" "interview--google-zrich" "tres-mariposas" "tres-mariposas" "that-tree" "that-tree" "si-no-estudian-al-menos-que-sean-creativos" "si-no-estudian-al-menos-que-sean-creativos" "viewflinckr" "viewflinckr" "rodolphe-simeon-genial" "rodolphe-simeon-genial" "entierro-de-la-sardina-i" "entierro-de-la-sardina-i" "entierro-de-la-sardina-ii" "entierro-de-la-sardina-ii" "clouds-are-difficult-to-handle" "clouds-are-difficult-to-handle" "end" "end" "robert-mekis-fotografia-de-paisajes" "robert-mekis-fotografia-de-paisajes" "google-ha-dicho-no" "google-ha-dicho-no" "en-julio-al-network-computing-and-applications-en-cambridge-massachusetts" "en-julio-al-network-computing-and-applications-en-cambridge-massachusetts" "moon-in-danger-darkness-is-coming" "moon-in-danger-darkness-is-coming" "gimp-2315" "gimp-2315" "correccion-de-lentes-gran-angular-y-perspectiva" "correccion-de-lentes-gran-angular-y-perspectiva" "post-2007-4-23" "post-2007-4-23" "wpmorph-version-16" "wpmorph-version-16" "discrepancia" "discrepancia" "ronda-de-ventas-fotograficas" "ronda-de-ventas-fotograficas" "from-the-car" "from-the-car" "entrevista-para-onda-regional-sobre-planet-murcia" "entrevista-para-onda-regional-sobre-planet-murcia" "michel-camilo--tomatito-spain-again" "michel-camilo--tomatito-spain-again" "at-the-tea-shop" "at-the-tea-shop" "hipotecas-bancos-por-internet-chapuzas-varias-y-de-como-firefox-salva-la-jugada" "hipotecas-bancos-por-internet-chapuzas-varias-y-de-como-firefox-salva-la-jugada" "bruno-barbey" "bruno-barbey" "bitacora-de-tomas-senabre--fotografia-digital-y-software-libre" "bitacora-de-tomas-senabre--fotografia-digital-y-software-libre" "post-2007-5-5" "post-2007-5-5" "king-of-the-spring" "king-of-the-spring" "pencams" "pencams" "heather-champ" "heather-champ" "simulando-pelicula-en-blanco-y-negro-con-digital" "simulando-pelicula-en-blanco-y-negro-con-digital" "yo-tambien-estuve-en-el-beersblogs" "yo-tambien-estuve-en-el-beersblogs" "julian" "julian" "cloud-passing-by" "cloud-passing-by" "musica-del-anuncio-del-nuevo-mitsubishi-colt" "musica-del-anuncio-del-nuevo-mitsubishi-colt" "road" "road" "mojacar" "mojacar" "upset-coffee" "upset-coffee" "atardecer-en-las-salinas-post-2007-5-16" "atardecer-en-las-salinas-post-2007-5-16" "two-new-friends" "two-new-friends" "bugs-view" "bugs-view" "post-2007-5-18" "post-2007-5-18" "road-stories-puppet-love-at-the-front-of-emmas-car" "road-stories-puppet-love-at-the-front-of-emmas-car" "ronda-de-ventas-fotograficas-de-nuevo-y-utf8" "ronda-de-ventas-fotograficas-de-nuevo-y-utf8" "post-2007-5-21" "post-2007-5-21" "busy" "busy" "post-2007-5-24" "post-2007-5-24" "edge-meditation" "edge-meditation" "house-with-red-door" "house-with-red-door" "cat-earth--grep-water" "cat-earth--grep-water" "friends" "friends" "come-fly-with-me" "come-fly-with-me" "looking-up-in-zurich" "looking-up-in-zurich" "landscape-with-cloud" "landscape-with-cloud" "hyperfocal-photoblog-picaday" "hyperfocal-photoblog-picaday" "mmm-i-think-im-going-to-photograph-this-she-thought" "mmm-i-think-im-going-to-photograph-this-she-thought" "smile" "smile" "post-2007-6-22" "post-2007-6-22" "post-2007-6-26" "post-2007-6-26" "los-obispos-en-el-club-de-la-comedia" "los-obispos-en-el-club-de-la-comedia" "el-fin-de-area-reservada" "el-fin-de-area-reservada" "leaves-in-the-night" "leaves-in-the-night" "lunch-with-sister" "lunch-with-sister" "boston-skyline-by-night" "boston-skyline-by-night" "sabado-noche-al-otro-lado-del-atlantico" "sabado-noche-al-otro-lado-del-atlantico" "mas-memoria-usando-un-usb" "mas-memoria-usando-un-usb" "trenes-de-juguete-de-mi-amigo-nacho" "trenes-de-juguete-de-mi-amigo-nacho" "missing-la-mancha" "missing-la-mancha" "concierto-de-second-en-yechar" "concierto-de-second-en-yechar" "japanese-i" "japanese-i" "la-tormenta-de-las-camaras" "la-tormenta-de-las-camaras" "sea-edge" "sea-edge" "y-finalmente-llego-d300-12mpx-formato-dx-d3-12mpx-formato-full-frame" "y-finalmente-llego-d300-12mpx-formato-dx-d3-12mpx-formato-full-frame" "field-of-gold" "field-of-gold" "mi-muy-buena-amiga-belen" "mi-muy-buena-amiga-belen" "emma-post-2007-8-24" "emma-post-2007-8-24" "boston-skyline" "boston-skyline" "chiarooscuro" "chiarooscuro" "an-ordinary-table" "an-ordinary-table" "paddington-station-london" "paddington-station-london" "el-furor-de-las-inmobiliarias" "el-furor-de-las-inmobiliarias" "sobre-el-tamano-de-los-garajes" "sobre-el-tamano-de-los-garajes" "waking-up-in-the-south-east-of-spain" "waking-up-in-the-south-east-of-spain" "emma-amp-d200" "emma-amp-d200" "post-2007-9-14" "post-2007-9-14" "chicken-katsu-bento" "chicken-katsu-bento" "sad-seascape" "sad-seascape" "night-with-the-polaroid-" "night-with-the-polaroid-" "mi-nueva-cocina" "mi-nueva-cocina" "post-2007-10-6" "post-2007-10-6" "felicidades-irene-amp-jose-luis" "felicidades-irene-amp-jose-luis" "ya-sabeis-amigos-este-viernes-a-festejarlo-con-la-bandera" "ya-sabeis-amigos-este-viernes-a-festejarlo-con-la-bandera" "las-dos-espanas-todavia-hoy" "las-dos-espanas-todavia-hoy" "amateur-photographer-tip-2-teach-your-friends-how-to-use-your-camera-" "amateur-photographer-tip-2-teach-your-friends-how-to-use-your-camera-" "mayor-oreja-y-la-condena-del-franquismo" "mayor-oreja-y-la-condena-del-franquismo" "apuntes-de-verano" "apuntes-de-verano" "bnunis--emmanuel-smague" "bnunis--emmanuel-smague" "carmen-en-el-albero-murcia" "carmen-en-el-albero-murcia" "classic-malts" "classic-malts" "el-primo-de-rajoy" "el-primo-de-rajoy" "mini-kitchen" "mini-kitchen" "working-late" "working-late" "ataques-en-blogs-contra-mi-persona" "ataques-en-blogs-contra-mi-persona" "voigtlnder-vc-meter" "voigtlnder-vc-meter" "emma-reading-the-newspaper" "emma-reading-the-newspaper" "overload" "overload" "moving" "moving" "moving-ii" "moving-ii" "my-autumn" "my-autumn" "a-van-and-a-park-first-tilt-test-" "a-van-and-a-park-first-tilt-test-" "su-linea-adsl-esta-afectada-por-un-problema-tecnico-actualmente" "su-linea-adsl-esta-afectada-por-un-problema-tecnico-actualmente" "post-2007-11-20" "post-2007-11-20" "noche-en-los-alcazares" "noche-en-los-alcazares" "the-perfect-time-for-the-velvia" "the-perfect-time-for-the-velvia" "big-eye" "big-eye" "backup-de-wordpress" "backup-de-wordpress" "exposicion-de-marin-en-la-fundacion-telefonica" "exposicion-de-marin-en-la-fundacion-telefonica" "the-67-meets-la-mancha" "the-67-meets-la-mancha" "oiseux-triste" "oiseux-triste" "classic-camera-ads--information" "classic-camera-ads--information" "mamiya-super-23-polaroid-tribute" "mamiya-super-23-polaroid-tribute" "mamiya-m645-polaroid-tribute" "mamiya-m645-polaroid-tribute" "polaroid-macro-setup-" "polaroid-macro-setup-" "soy-leyenda" "soy-leyenda" "fallen-post-2007-12-21" "fallen-post-2007-12-21" "pero-que-bueno-es-escolar" "pero-que-bueno-es-escolar" "ordinary-field" "ordinary-field" "film-is-not-dead-it-just-smells-funny" "film-is-not-dead-it-just-smells-funny" "sea-fence" "sea-fence" "view-from-our-window" "view-from-our-window" "memorias-olvidadas-de-la-guerra-civil-espanola" "memorias-olvidadas-de-la-guerra-civil-espanola" "requiem-for-a-polaroid" "requiem-for-a-polaroid" "nightmare-in-darkness" "nightmare-in-darkness" "emma-post-2008-1-2" "emma-post-2008-1-2" "love" "love" "it-could-be-me-20-years-ago" "it-could-be-me-20-years-ago" "kowa-six-by-kowa-six" "kowa-six-by-kowa-six" "me" "me" "sparkle" "sparkle" "examen-de-sistemas-distribuidos-manana" "examen-de-sistemas-distribuidos-manana" "700-euros" "700-euros" "welcome-home" "welcome-home" "solucion-al-examen-de-sistemas-distribuidos" "solucion-al-examen-de-sistemas-distribuidos" "meneado" "meneado" "emma-amp-sun" "emma-amp-sun" "vendemos-piso-en-murcia" "vendemos-piso-en-murcia" "time" "time" "fedeguico-te-estas-amariconando" "fedeguico-te-estas-amariconando" "unmedio" "unmedio" "vivejazz-el-nuevo-proyecto-de-antonio-fernandez" "vivejazz-el-nuevo-proyecto-de-antonio-fernandez" "californication" "californication" "como-seria-abrir-ahora-un-apple-c-de-1988" "como-seria-abrir-ahora-un-apple-c-de-1988" "campana-contra-las-mamografias-para-inmigrantes" "campana-contra-las-mamografias-para-inmigrantes" "spring-glow" "spring-glow" "conversion-sencilla-de-tipos-corba" "conversion-sencilla-de-tipos-corba" "sunset-amp-the-city" "sunset-amp-the-city" "conversor-de-xx-a-caracter-en-c" "conversor-de-xx-a-caracter-en-c" "post-2008-2-16" "post-2008-2-16" "actualizacion-conversion-de-xx-caracter-ascii-en-c" "actualizacion-conversion-de-xx-caracter-ascii-en-c" "acampada-por-el-07-en-la-region" "acampada-por-el-07-en-la-region" "almond-flower" "almond-flower" "post-2008-2-21" "post-2008-2-21" "metodo-para-dejar-de-ser-de-derechas" "metodo-para-dejar-de-ser-de-derechas" "vota-con-todas-tus-fuerzas" "vota-con-todas-tus-fuerzas" "under" "under" "lighthouse-with-lightleaks" "lighthouse-with-lightleaks" "lamp" "lamp" "4-meses-3-semanas-y-2-dias" "4-meses-3-semanas-y-2-dias" "rajoydi" "rajoydi" "post-2008-3-3" "post-2008-3-3" "at-emmas-car" "at-emmas-car" "cobarde-atentado-de-eta" "cobarde-atentado-de-eta" "espana-una-vez-mas-socialista" "espana-una-vez-mas-socialista" "mamiya-press-super23" "mamiya-press-super23" "little-flower" "little-flower" "post-2008-3-10" "post-2008-3-10" "dias-caldum-4" "dias-caldum-4" "inkscape-post-2008-3-12" "inkscape-post-2008-3-12" "almost" "almost" "cant-resist-" "cant-resist-" "photoshop-disasters" "photoshop-disasters" "sobre-educacion-para-la-ciudadania" "sobre-educacion-para-la-ciudadania" "terminada-la-charla-de-manana-en-la-lan-party" "terminada-la-charla-de-manana-en-la-lan-party" "twitter" "twitter" "la-charla-de-hoy-en-la-lan-party" "la-charla-de-hoy-en-la-lan-party" "por-que-me-gusta-ruby-y-por-que-siempre-me-gusto-smalltalk" "por-que-me-gusta-ruby-y-por-que-siempre-me-gusto-smalltalk" "phd-at-30" "phd-at-30" "la-imagen-anterior-ghostscript--perl--imagemagick" "la-imagen-anterior-ghostscript--perl--imagemagick" "sombras-con-gtkmm-y-cairo-cairomm-en-c" "sombras-con-gtkmm-y-cairo-cairomm-en-c" "sun-almost-set" "sun-almost-set" "i-remember-last-winter" "i-remember-last-winter" "cursos-interesantes" "cursos-interesantes" "lubi-amp-beer" "lubi-amp-beer" "abrazos-gratis-free-hugs" "abrazos-gratis-free-hugs" "breeze" "breeze" "self-with-super23" "self-with-super23" "asahi" "asahi" "que-bien-que-en-murcia-se-nos-conozca-por-nuestros-logros" "que-bien-que-en-murcia-se-nos-conozca-por-nuestros-logros" "dawn" "dawn" "post-2008-4-30" "post-2008-4-30" "flowers-by-the-road" "flowers-by-the-road" "uncertain" "uncertain" "post-2008-5-5" "post-2008-5-5" "uncertain-ii" "uncertain-ii" "actualizacion-a-hardy-durante-el-dia-de-hoy" "actualizacion-a-hardy-durante-el-dia-de-hoy" "field" "field" "julian-preparando-cafe-espresso" "julian-preparando-cafe-espresso" "post-2008-5-9" "post-2008-5-9" "haciendo-la-fotografia-util" "haciendo-la-fotografia-util" "empieza-el-espectaculo-25-anos-de-la-facultad-de-informatica-de-la-universidad-de-murcia" "empieza-el-espectaculo-25-anos-de-la-facultad-de-informatica-de-la-universidad-de-murcia" "kind-of" "kind-of" "i-encuentro-de-blogs-rurales" "i-encuentro-de-blogs-rurales" "cactus-bee-leaving" "cactus-bee-leaving" "linux-photography-blog" "linux-photography-blog" "sicarm--ricardo-galli" "sicarm--ricardo-galli" "dreamy-flowers" "dreamy-flowers" "pure-white" "pure-white" "post-2008-5-30" "post-2008-5-30" "water-running-in-the-old-mill" "water-running-in-the-old-mill" "lamp-post-2008-6-2" "lamp-post-2008-6-2" "yes-she-love-me" "yes-she-love-me" "dawn-at-the-beach" "dawn-at-the-beach" "new-friend" "new-friend" "hasselblad-test-again" "hasselblad-test-again" "el-resumen-de-una-radio" "el-resumen-de-una-radio" "los-grandes-genios-de-la-informatica" "los-grandes-genios-de-la-informatica" "felicidades-pedro-y-m-encarna" "felicidades-pedro-y-m-encarna" "rain" "rain" "como-seria-verder-tu-vida-por-ebay" "como-seria-verder-tu-vida-por-ebay" "phd-latex-source-code-spiral" "phd-latex-source-code-spiral" "blueprints-para-inkscape" "blueprints-para-inkscape" "she" "she" "mi-colegio-cumple-50-anos" "mi-colegio-cumple-50-anos" "incendio-cerca-del-campus-y-de-mi-casa" "incendio-cerca-del-campus-y-de-mi-casa" "post-2008-8-5" "post-2008-8-5" "theres-only-three-things-ive-always-been-afraid-of" "theres-only-three-things-ive-always-been-afraid-of" "night-drink" "night-drink" "post-2008-9-17" "post-2008-9-17" "tesis--portada" "tesis--portada" "tesis--hoja-bonita-" "tesis--hoja-bonita-" "from-emmas-car" "from-emmas-car" "vuelta-al-blog" "vuelta-al-blog" "granada-street" "granada-street" "impresionante-la-canon-5d-mark-ii" "impresionante-la-canon-5d-mark-ii" "y-el-23-de-septiembre-de-2008" "y-el-23-de-septiembre-de-2008" "phd-presentation-slides-ongoing-work" "phd-presentation-slides-ongoing-work" "end-of-summer" "end-of-summer" "metamorphosis-de-glenn-marshall" "metamorphosis-de-glenn-marshall" "processing--p5sunflow" "processing--p5sunflow" "compilando-inkscape-y-usando-spiro" "compilando-inkscape-y-usando-spiro" "esmuzs-best-design-ever-" "esmuzs-best-design-ever-" "raining-in-the-balcony" "raining-in-the-balcony" "rolleicord-iib-193839-with-a-carl-zeiss-triotar-35" "rolleicord-iib-193839-with-a-carl-zeiss-triotar-35" "v" "v" "grass-level" "grass-level" "parecia-que-nunca-iba-a-llegar" "parecia-que-nunca-iba-a-llegar" "y-manana-es-el-dia" "y-manana-es-el-dia" "bw-bar" "bw-bar" "night-tea" "night-tea" "actualizacion-del-servidor" "actualizacion-del-servidor" "problemas-de-correo" "problemas-de-correo" "post-2008-11-13" "post-2008-11-13" "fork-chair-and-stuff" "fork-chair-and-stuff" "boda--wedding" "boda--wedding" "glaciar-perito-moreno" "glaciar-perito-moreno" "objecion-a-educacion-para-la-ciudadania" "objecion-a-educacion-para-la-ciudadania" "avanzando-temas-tesis" "avanzando-temas-tesis" "mas-avances-catedra-saesumu" "mas-avances-catedra-saesumu" "post-2009-2-19" "post-2009-2-19" "c-optimizaciones-del-compilador" "c-optimizaciones-del-compilador" "stackoverflowcom" "stackoverflowcom" "serious-programs" "serious-programs" "emma-at-the-phone" "emma-at-the-phone" "post-2009-3-2" "post-2009-3-2" "bodegas-juan-gil" "bodegas-juan-gil" "huevo-de-pascua-en-slashdotorg" "huevo-de-pascua-en-slashdotorg" "busqueda-y-sustitucion-avanzada-en-emacs-usando-emacslisp" "busqueda-y-sustitucion-avanzada-en-emacs-usando-emacslisp" "gedit-" "gedit-" "more-c-idioms-wikibook" "more-c-idioms-wikibook" "identica" "identica" "ext4" "ext4" "google-tech-talks" "google-tech-talks" "by-the-road" "by-the-road" "40-excellent-illustrations-in-web-designs" "40-excellent-illustrations-in-web-designs" "linux-for-designers" "linux-for-designers" "post-2009-3-30" "post-2009-3-30" "web-design-trends-for-2009" "web-design-trends-for-2009" "1-2-3-responda-otra-vez-como-se-podria-llamar-tambien-a-las-fiestas-de-economicas" "1-2-3-responda-otra-vez-como-se-podria-llamar-tambien-a-las-fiestas-de-economicas" "stones-at-the-beach" "stones-at-the-beach" "noche-de-los-tambores-en-mula" "noche-de-los-tambores-en-mula" "snow" "snow" "empty" "empty" "10-tutoriales-interesantes-de-blender" "10-tutoriales-interesantes-de-blender" "post-2009-4-21" "post-2009-4-21" "calculo-de-la-fft-con-metaprogramacion-en-c" "calculo-de-la-fft-con-metaprogramacion-en-c" "blogs-para-estar-al-dia-de-c" "blogs-para-estar-al-dia-de-c" "trapped-tree" "trapped-tree" "primera-foto--first-photo" "primera-foto--first-photo" "field-sun-reflected" "field-sun-reflected" "pentax-67--kodak-aeroektar-17825-versus-nikon-d200--sigma-30mm14" "pentax-67--kodak-aeroektar-17825-versus-nikon-d200--sigma-30mm14" "e-pluribus-unum" "e-pluribus-unum" "tea-for-one" "tea-for-one" "nature" "nature" "mama" "mama" "post-2009-8-16" "post-2009-8-16" "the-incidental-passerby" "the-incidental-passerby" "practica-de-la-programacion" "practica-de-la-programacion" "fisionomia-de-un-emcreyenteem" "fisionomia-de-un-emcreyenteem" "sobre-comentarios-en-codigo" "sobre-comentarios-en-codigo" "emma-8-months-22" "emma-8-months-22" "emma-8-months-12" "emma-8-months-12" "clojure" "clojure" "should-i-use-comic-sans" "should-i-use-comic-sans" "estrasburgo-falla-que-los-crucifijos-en-las-aulas-violan-el-derecho-a-la-libertad-de-religion" "estrasburgo-falla-que-los-crucifijos-en-las-aulas-violan-el-derecho-a-la-libertad-de-religion" "dias-caldum09" "dias-caldum09" "entrevista-en-enfoquemanualcom" "entrevista-en-enfoquemanualcom" "aznar-siempre-tan-ocupado-cuando-viene-a-murcia" "aznar-siempre-tan-ocupado-cuando-viene-a-murcia" "iii-concurso-de-pintura-al-aire-libre-de-mula" "iii-concurso-de-pintura-al-aire-libre-de-mula" "post-2009-11-11" "post-2009-11-11" "la-luz-de-los-inocentes" "la-luz-de-los-inocentes" "interesante-articulo-sobre-dsls-internos-en-java" "interesante-articulo-sobre-dsls-internos-en-java" "curiosidad-con-emacs" "curiosidad-con-emacs" "lovely-after-dinner" "lovely-after-dinner" "autocompletado-en-emacs" "autocompletado-en-emacs" "paso-a-karmic" "paso-a-karmic" "en-karmic-increible" "en-karmic-increible" "java-sucks" "java-sucks" "martina" "martina" "intereconomia-las-dos-espanas-del-2009-y-de-por-que-los-condones-no-son-mas-que-un-peligro-para-africa" "intereconomia-las-dos-espanas-del-2009-y-de-por-que-los-condones-no-son-mas-que-un-peligro-para-africa" "carta-a-mis-nietos-enrique-amat-en-la-verdad-de-hoy" "carta-a-mis-nietos-enrique-amat-en-la-verdad-de-hoy" "martina-1-day-old" "martina-1-day-old" "sacha-di-manolo-ride-on" "sacha-di-manolo-ride-on" "mark-volkmann-clojure" "mark-volkmann-clojure" "having-a-baby-leaves-you-this-way-" "having-a-baby-leaves-you-this-way-" "api-design-matters" "api-design-matters" "el-desafio-de-arc-en-clojure" "el-desafio-de-arc-en-clojure" "soap-entre-lo-peor-de-la-decada" "soap-entre-lo-peor-de-la-decada" "pobre-miguel-hernandez" "pobre-miguel-hernandez" "videos-y-clases-sobre-scheme--lisp-clojure-etc" "videos-y-clases-sobre-scheme--lisp-clojure-etc" "emconcatem-quothappy-quot-emreplaceregexpinstringem-quot2009quot-quot2010quot-emformattimestringem-quotyquot-quotquot" "emconcatem-quothappy-quot-emreplaceregexpinstringem-quot2009quot-quot2010quot-emformattimestringem-quotyquot-quotquot" "curso-de-fotografia-digital-por-el-mundo" "curso-de-fotografia-digital-por-el-mundo" "httptypographysoupio" "httptypographysoupio" "c-mas-rapido-que-c-o-atoi-emversusem-boostspirit-v2" "c-mas-rapido-que-c-o-atoi-emversusem-boostspirit-v2" "mas-ventas-de-objetivos" "mas-ventas-de-objetivos" "nosql-databases" "nosql-databases" "mas-de-bases-de-datos-nosql-consistent-hashing" "mas-de-bases-de-datos-nosql-consistent-hashing" "garzon-estamos-contigo" "garzon-estamos-contigo" "ibarra-si-espana-hubiera-apostado-por-el-software-libre-habria-evitado-congelar-pensiones" "ibarra-si-espana-hubiera-apostado-por-el-software-libre-habria-evitado-congelar-pensiones" "saramago-por-garzon" "saramago-por-garzon" "emf4cpp-una-implementacion-de-eclipse-emf-en-c" "emf4cpp-una-implementacion-de-eclipse-emf-en-c" "martina-7-months-old-martina-con-7-meses" "martina-7-months-old-martina-con-7-meses" "patio-de-colegio" "patio-de-colegio" "iphone-os-4-en-un-iphone-3g" "iphone-os-4-en-un-iphone-3g" "nuevo-dominio-para-la-catedra-saes" "nuevo-dominio-para-la-catedra-saes" "usando-ramzswap-para-mejorar-el-uso-de-memoria" "usando-ramzswap-para-mejorar-el-uso-de-memoria" "post-2010-11-18" "post-2010-11-18" "hispania-f1-racing-team" "hispania-f1-racing-team" "boats-amp-child" "boats-amp-child" "martina-post-2011-3-28" "martina-post-2011-3-28" "primera-aproximacion-de-un-mecanismo-de-actores-para-c" "primera-aproximacion-de-un-mecanismo-de-actores-para-c" "martina-emma" "martina-emma" "primera-entrada" "primera-entrada" "blog-online" "blog-online" "ya-funcionan-los-archivos" "ya-funcionan-los-archivos" "y-las-paginas-de-los-tags" "y-las-paginas-de-los-tags" "fiestas-en-mula" "fiestas-en-mula" "anadido-colorizacion-de-codigo-con-googlecodeprettify" "anadido-colorizacion-de-codigo-con-googlecodeprettify" "entradas-del-blog-antiguo-disponibles" "entradas-del-blog-antiguo-disponibles" "multiprocesamiento-para-generar-el-blog" "multiprocesamiento-para-generar-el-blog" "estadisticas-de-tiempo-de-generacion-del-blog" "estadisticas-de-tiempo-de-generacion-del-blog" "imagenes-en-el-blog" "imagenes-en-el-blog" "attitude" "attitude" "integracion-de-apis-en-el-modelado" "integracion-de-apis-en-el-modelado" "pacman-el-gestor-de-paquetes-de-arch-linux" "pacman-el-gestor-de-paquetes-de-arch-linux" "busqueda-en-el-blog" "busqueda-en-el-blog" "peggy-leeit-is-a-good-day" "peggy-leeit-is-a-good-day" "let-over-lambda50-years-of-lisp" "let-over-lambda50-years-of-lisp" "muere-dennis-ritchie" "muere-dennis-ritchie" "schopenhauer-el-amor-las-mujeres-y-la-muerte" "schopenhauer-el-amor-las-mujeres-y-la-muerte" "quotconferenciaquot-quotinternacionalquot-sobre-el-futuro-de-eta" "quotconferenciaquot-quotinternacionalquot-sobre-el-futuro-de-eta" "actualizacion-a-ubuntu-oneiric-ocelot-1110" "actualizacion-a-ubuntu-oneiric-ocelot-1110" "agur-eta" "agur-eta" "translation-within-emacs-using-google-translate" "translation-within-emacs-using-google-translate" "interesante-entrada-de-jj-merelo-sobre-jobs-y-stallman" "interesante-entrada-de-jj-merelo-sobre-jobs-y-stallman" "otra-vez-no-muere-john-mccarthy-inventor-de-lisp" "otra-vez-no-muere-john-mccarthy-inventor-de-lisp" "prueba-del-formato-orgmode" "prueba-del-formato-orgmode" "macros-emacs-para-facilitar-introducir-entradas" "macros-emacs-para-facilitar-introducir-entradas" "martina-playing-23-months-old" "martina-playing-23-months-old" "impresionado-con-la-camara-del-samsung-galaxy-s-ii" "impresionado-con-la-camara-del-samsung-galaxy-s-ii")) ([cl-struct-fmb-post "Impresionado con la cámara del Samsung Galaxy S II" "
<p>He hecho una pequeña prueba con un programa de escaneo de documentos y es magnífica la cámara. Con luz artificial ha generado una imagen con una resolución perfecta de mi tarjeta de seguridad social americana, que llevaba mil años (desde el 2002) en mi cartera. La he usado para mirar mi número de seguridad social americano para abrirme una cuenta en Getty Images, que parece que quieren alguna de mis imágenes de Flickr. Todavía no estoy seguro de si venderé alguna, pero por curiosidad he abierto la cuenta. Pongo a continuación un crop al 100% de la imagen:</p><img src=\"http://neuromancer.inf.um.es/fm/img/ssn.png\" alt=\"Blog image.\"></img>" "
He hecho una pequeña prueba con un programa de escaneo de documentos y es magnífica la cámara. Con luz artificial ha generado una imagen con una resolución perfecta de mi tarjeta de seguridad social americana, que llevaba mil años (desde el 2002) en mi cartera. La he usado para mirar mi número de seguridad social americano para abrirme una cuenta en Getty Images, que parece que quieren alguna de[...]" "
He hecho una pequeña prueba con un programa de escaneo de documentos y es magnífica la cámara. Con luz artificial ha generado una imagen con una resolución perfecta de mi tarjeta de seguridad social americana, que llevaba mil años (desde el 2002) en mi cartera. La he usado para mirar mi número de seguridad social americano para abrirme una cuenta en Getty Images, que parece que quieren alguna de mis imágenes de Flickr. Todavía no estoy seguro de si venderé alguna, pero por curiosidad he abierto la cuenta. Pongo a continuación un crop al 100% de la imagen:" (photography android photo español spanish) "impresionado-con-la-camara-del-samsung-galaxy-s-ii" string 15 11 2011 0 16 ((:hours . 0) (:minutes . 16) (:day . 15) (:month . 11) (:year . 2011))] [cl-struct-fmb-post "Martina playing, 23 months old" "<object type=\"application/x-shockwave-flash\" width=\"640\" height=\"480\" data=\"http://www.flickr.com/apps/video/stewart.swf?v=109786\" classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\"> <param name=\"flashvars\" value=\"intl_lang=es-us&photo_secret=bd3e6d1bfc&photo_id=6307578684&flickr_show_info_box=true\"></param> <param name=\"movie\" value=\"http://www.flickr.com/apps/video/stewart.swf?v=109786\"></param> <param name=\"bgcolor\" value=\"#000000\"></param> <param name=\"allowFullScreen\" value=\"true\"></param><embed type=\"application/x-shockwave-flash\" src=\"http://www.flickr.com/apps/video/stewart.swf?v=109786\" bgcolor=\"#000000\" allowfullscreen=\"true\" flashvars=\"intl_lang=es-us&photo_secret=bd3e6d1bfc&photo_id=6307578684&flickr_show_info_box=true\" height=\"480\" width=\"640\"></embed></object>
<p>It is REALLY amazing how fast she learns. At her age, she uses almost all Spanish constructions well, verbs (including irregular ones), nouns, slang expressions, tenses, etc. I used the Harinezumi 2++ for this. It is not very good in interiors, but in B&W gives a nice vintage feeling. For those of you not knowing Spanish, at the end of the video she says something like `Wait for me, I'll be right back'... :)</p>" "
It is REALLY amazing how fast she learns. At her age, she uses almost all Spanish constructions well, verbs (including irregular ones), nouns, slang expressions, tenses, etc. I used the Harinezumi 2++ for this. It is not very good in interiors, but in B&W gives a nice vintage feeling. For those of you not knowing Spanish, at the end of the video she says something like `Wait for me, I'll be righ[...]" "    
It is REALLY amazing how fast she learns. At her age, she uses almost all Spanish constructions well, verbs (including irregular ones), nouns, slang expressions, tenses, etc. I used the Harinezumi 2++ for this. It is not very good in interiors, but in B&W gives a nice vintage feeling. For those of you not knowing Spanish, at the end of the video she says something like `Wait for me, I'll be right back'... :)" (english video martina black&white b&w) "martina-playing-23-months-old" string 3 11 2011 1 22 ((:hours . 1) (:minutes . 22) (:day . 3) (:month . 11) (:year . 2011))] [cl-struct-fmb-post "Macros Emacs para facilitar introducir entradas" "
<p>Continuando con el formato <code>org-mode</code>, he añadido también un <i>esqueleto</i> que rellena de forma automática los campos de una entrada del blog, para que sólo tenga que escribir el texto y las categorías. Es la siguiente función Emacs-Lisp:
</p>



<pre class=\"src src-emacs-lisp\">(<span style=\"color: #6495ed; font-weight: bold;\">define-skeleton</span> <span style=\"color: #87ceeb;\">add-new-post</span>
  <span style=\"color: #32cd32;\">\"Add a new post with the current date and time. Ask for the post title.\"</span>
  <span style=\"color: #32cd32;\">\"Post title: \"</span>
  <span style=\"color: #32cd32;\">\"(new-post\"</span> \\n
  &gt; <span style=\"color: #32cd32;\">\"\\\"\"</span> str <span style=\"color: #32cd32;\">\"\\\"\"</span> \\n
  &gt; <span style=\"color: #32cd32;\">\":body \\\"\"</span> _  <span style=\"color: #32cd32;\">\"\\\"\"</span> \\n
  &gt; <span style=\"color: #32cd32;\">\":categories '('general)\"</span> \\n
  &gt; <span style=\"color: #32cd32;\">\":body-format 'string\"</span> \\n
  &gt; (format-time-string
     <span style=\"color: #32cd32;\">\":hours %H :minutes %M :day %e :month %m :year %Y)\"</span>
     (current-time)) \\n )
</pre>

<p>
La función <code>new-post</code> me permite añadir una entrada al blog. Es código Common Lisp, por lo que se ve que comienza por un parémtesis. El patrón (definido por el macro de Emacs-Lisp <code>define-skeleton</code> después me pregunta por el título de la entrada (el uso de la variable <code>str</code> hace que me pregunte a la hora de insertar el patrón). Después, añade el cuerpo vacío y también la fecha actual de la entrada obtenida de la función de Emacs-Lisp <code>(current-time)</code>. Finalmente, el carácter <code>_</code> indica la posición en la que queda el cursor, con lo que puedo empezar a escribir el cuerpo de la entrada.
</p>" "
Continuando con el formato org-mode, he añadido también un esqueleto que rellena de forma automática los campos de una entrada del blog, para que sólo tenga que escribir el texto y las categorías. Es la siguiente función Emacs-Lisp:




(define-skeleton add-new-post
\"Add a new post with the current date and time. Ask for the post title.\"
\"Post title: \"
\"(new-post\" \\n
&gt; \"\\\"\" str \"\\\"\" \\n
&gt; \"[...]" "
Continuando con el formato org-mode, he añadido también un esqueleto que rellena de forma automática los campos de una entrada del blog, para que sólo tenga que escribir el texto y las categorías. Es la siguiente función Emacs-Lisp:




(define-skeleton add-new-post
  \"Add a new post with the current date and time. Ask for the post title.\"
  \"Post title: \"
  \"(new-post\" \\n
  &gt; \"\\\"\" str \"\\\"\" \\n
  &gt; \":body \\\"\" _  \"\\\"\" \\n
  &gt; \":categories '('general)\" \\n
  &gt; \":body-format 'string\" \\n
  &gt; (format-time-string
     \":hours %H :minutes %M :day %e :month %m :year %Y)\"
     (current-time)) \\n )



La función new-post me permite añadir una entrada al blog. Es código Common Lisp, por lo que se ve que comienza por un parémtesis. El patrón (definido por el macro de Emacs-Lisp define-skeleton después me pregunta por el título de la entrada (el uso de la variable str hace que me pregunte a la hora de insertar el patrón). Después, añade el cuerpo vacío y también la fecha actual de la entrada obtenida de la función de Emacs-Lisp (current-time). Finalmente, el carácter _ indica la posición en la que queda el cursor, con lo que puedo empezar a escribir el cuerpo de la entrada.
" (español spanish lisp emacs emacs-lisp skeleton blog) "macros-emacs-para-facilitar-introducir-entradas" string 29 10 2011 2 20 ((:hours . 2) (:minutes . 20) (:day . 29) (:month . 10) (:year . 2011))] [cl-struct-fmb-post "Prueba del formato org-mode" "
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
página&hellip; </p>" "
En este caso, he utilizado org-mode para crear escribir esta entrada.


¡Incluso soporta varios párrafos!


El código para hacerlo en Emacs-lisp es el siguiente:


(defun org-to-html ()
(interactive)
(when (mark)
(save-excursion
(let ((text (buffer-substring-no-properties (point) (mark))))
(delete-region (point) (mark))
(insert
(with-temp-buffer
(insert text)
(org-export-region-as-html (point-mi[...]" "
En este caso, he utilizado org-mode para crear escribir esta entrada.


¡Incluso soporta varios párrafos!


El código para hacerlo en Emacs-lisp es el siguiente:


(defun org-to-html ()
  (interactive)
  (when (mark)
    (save-excursion
      (let ((text (buffer-substring-no-properties (point) (mark))))
        (delete-region (point) (mark))
        (insert
         (with-temp-buffer
           (insert text)
           (org-export-region-as-html (point-min) (point-max) t 'string)))))))


 Lo que hago pues es seleccionar el texto que
escribo en formato org y llamar a esa función
org-to-html, que me transforma el texto seleccionado en
HTML, incluso el trozo de código anterior, con coloreado de sintaxis
que no necesita del embellecedor de código JavaScript de la
página&hellip; " (español spanish lisp emacs org-mode org blog) "prueba-del-formato-orgmode" string 29 10 2011 1 53 ((:hours . 1) (:minutes . 53) (:day . 29) (:month . 10) (:year . 2011))] [cl-struct-fmb-post "¡Otra vez no! Muere John McCarthy, inventor de Lisp" "
<p>Estamos de tristeza últimamente. Tras la muerte de Ritchie,
muere también el inventor de Lisp, John McCarthy. Para un blog escrito
en Lisp (y para toda la comunidad informática mundial) una mala
noticia. Si C es el padre de la mayoría de los lenguajes imperativos,
Lisp lo es de los funcionales. Con esos dos lenguajes casi cubrimos el
99% de la informática... A este seguro que tampoco lo vemos en cientos
de periódicos... Os dejo un enlace
al <a href=\"http://t.co/oxjiRip7\" rel=\"interesting link\">artículo original de LISP</a>.</p><img src=\"http://neuromancer.inf.um.es/fm/img/john-mccarthy-programming-wrong.jpg\" alt=\"McCarthy\"></img>" "
Estamos de tristeza últimamente. Tras la muerte de Ritchie,
muere también el inventor de Lisp, John McCarthy. Para un blog escrito
en Lisp (y para toda la comunidad informática mundial) una mala
noticia. Si C es el padre de la mayoría de los lenguajes imperativos,
Lisp lo es de los funcionales. Con esos dos lenguajes casi cubrimos el
99% de la informática... A este seguro que tampoco lo vemos en[...]" "
Estamos de tristeza últimamente. Tras la muerte de Ritchie,
muere también el inventor de Lisp, John McCarthy. Para un blog escrito
en Lisp (y para toda la comunidad informática mundial) una mala
noticia. Si C es el padre de la mayoría de los lenguajes imperativos,
Lisp lo es de los funcionales. Con esos dos lenguajes casi cubrimos el
99% de la informática... A este seguro que tampoco lo vemos en cientos
de periódicos... Os dejo un enlace
al artículo original de LISP." (lisp mccarthy programming español spanish) "otra-vez-no-muere-john-mccarthy-inventor-de-lisp" string 24 october 2011 23 45 ((:hours . 23) (:minutes . 45) (:day . 24) (:month . 10) (:year . 2011))] [cl-struct-fmb-post "Interesante entrada de JJ. Merelo sobre Jobs y Stallman" "
<p>Coincide totalmente con lo que pienso. Os
dejo <a href=\"http://atalaya.blogalia.com/historias/70546\" rel=\"interesting link\">el enlace:
&quot;Odio a los mártires del rock&quot;</a>.</p>" "
Coincide totalmente con lo que pienso. Os
dejo el enlace:
&quot;Odio a los mártires del rock&quot;." "
Coincide totalmente con lo que pienso. Os
dejo el enlace:
&quot;Odio a los mártires del rock&quot;." (libre software jobs stallman español spanish) "interesante-entrada-de-jj-merelo-sobre-jobs-y-stallman" string 24 october 2011 12 20 ((:hours . 12) (:minutes . 20) (:day . 24) (:month . 10) (:year . 2011))] [cl-struct-fmb-post "Translation within Emacs using Google Translate" "<object type=\"application/x-shockwave-flash\" width=\"400\" height=\"375\" data=\"http://www.flickr.com/apps/video/stewart.swf?v=71377\" classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\"> <param name=\"flashvars\" value=\"intl_lang=es-us&amp;photo_secret=&amp;photo_id=6274361464\"></param> <param name=\"movie\" value=\"http://www.flickr.com/apps/video/stewart.swf?v=71377\"></param> <param name=\"bgcolor\" value=\"#000000\"></param> <param name=\"allowFullScreen\" value=\"true\"></param><embed type=\"application/x-shockwave-flash\" src=\"http://www.flickr.com/apps/video/stewart.swf?v=71377\" bgcolor=\"#000000\" allowfullscreen=\"true\" flashvars=\"intl_lang=es-us&amp;photo_secret=&amp;photo_id=6274361464\" height=\"375\" width=\"400\"></embed></object>
<p>Just to show a little Emacs-Lisp script I wrote the
          other day. We're in the process of translating all our class
          material into English, and thought of getting some help from
          Google Translator. Selecting a phrase and calling
          the <code>insert-translation</code> function substitutes
          current text with its traduction into English. You know,
          Google Translate fails a fair bit, but it helps, and you
          don't have to write all the slides again...</p>" "
Just to show a little Emacs-Lisp script I wrote the
other day. We're in the process of translating all our class
material into English, and thought of getting some help from
Google Translator. Selecting a phrase and calling
the insert-translation function substitutes
current text with its traduction into English. You know,
Google Translate fails a fair bit, but it helps, and you
don't have to wr[...]" "    
Just to show a little Emacs-Lisp script I wrote the
          other day. We're in the process of translating all our class
          material into English, and thought of getting some help from
          Google Translator. Selecting a phrase and calling
          the insert-translation function substitutes
          current text with its traduction into English. You know,
          Google Translate fails a fair bit, but it helps, and you
          don't have to write all the slides again..." (general english emacs lisp emacs-lisp google-translate translate) "translation-within-emacs-using-google-translate" string 24 october 2011 0 17 ((:hours . 0) (:minutes . 17) (:day . 24) (:month . 10) (:year . 2011))] [cl-struct-fmb-post "Agur, ETA" "
<p>No voy a decir nada que no se haya dicho ya. Quizá como
 diría el gran Labordeta: &quot;¡A la mierda!&quot;. Me ha gustado la
 portada de Público. Además del tributo a las víctimas (con el nombre
 de todas las víctimas), de nuevo apuntaré que me gustan los diseños
 basados en tipografía:<a href=\"http://imagenes.publico-estaticos.es/resources/archivos/2011/10/21/1319151795449portada22pdf.pdf\"><img src=\"http://neuromancer.inf.um.es/fm/img/portada_publico.jpg\" alt=\"Portada
Público\"></img></a></p>" "
No voy a decir nada que no se haya dicho ya. Quizá como
diría el gran Labordeta: &quot;¡A la mierda!&quot;. Me ha gustado la
portada de Público. Además del tributo a las víctimas (con el nombre
de todas las víctimas), de nuevo apuntaré que me gustan los diseños
basados en tipografía:" "
No voy a decir nada que no se haya dicho ya. Quizá como
 diría el gran Labordeta: &quot;¡A la mierda!&quot;. Me ha gustado la
 portada de Público. Además del tributo a las víctimas (con el nombre
 de todas las víctimas), de nuevo apuntaré que me gustan los diseños
 basados en tipografía:" (general españa español spanish) "agur-eta" string 21 october 2011 2 26 ((:hours . 2) (:minutes . 26) (:day . 21) (:month . 10) (:year . 2011))] [cl-struct-fmb-post "Actualización a Ubuntu Oneiric Ocelot (11.10)" "
<p>Parece que en este caso la actualización a Ubuntu
 Oneiric Ocelot (11.10) no es tan sencilla ni tan poco problemática
 como otras. Primero, la imposición de Unity. Estoy todavía tratando
 de digerirla. Primero diré que <strong>NO ME GUSTA NADA</strong>. Ni en
 2D ni en 3D. Linux no es Mac, por mucho que se empeñen en hacerlo
 parecer, en quitar el botón derecho a todos los paneles (claro, aquí
 seguro que los desarrolladores de Ubuntu usan Mac para todo...),
 etc.</p>
<p>Pero es que además la actualización no va bien. Siempre
 quedan flecos sueltos. En algunos la barra izquierda no sale cuando
 acercas el ratón. No hay manera de configurar cómo aparece esa barra,
 a no ser que te vuelvas loco y busques por Internet y te des cuenta
 de que tienes que instalar el
 paquete <code>compizconfig-settings-manager</code>, y ahí tienes una
 pestaña &quot;Unity&quot; que sirve para configurar también la barra
 lateral (tamaño, aparición, etc.). Por último, por ejemplo, si
 teníais configurados <em>applets</em> para mostrar la carga de CPU,
 red, etc., o el tiempo, temperatura, etc., estos tampoco aparecen
 directamente. La solución es instalar manualmente (y ejecutar y
 posteriormente configurar) los
 paquetes <code>indicator-weather</code> para el tiempo,
 e <code>indicator-multiload</code> para que muestre el uso de CPU,
 memoria y red. Al ejecutarlos, se establecen en la barra superior tal
 que así:</p><img src=\"http://neuromancer.inf.um.es/fm/img/unity_bar.png\" alt=\"Unity Bar\"></img>
<p>Por cierto, que en este caso, no me aparece el icono del tiempo,
 ni tampoco el icono de terminar la sesión, que está escondido hacia
 la derecha. Tampoco se pueden mover los iconos, porque el botón
 derecho no lleva esa opción.</p>
<p><strong>ACTUALIZACIÓN</strong>: Por lo que
veo <a href=\"http://www.webupd8.org/2011/08/installing-using-classic-gnome-desktop.html\" rel=\"interesting link\">aquí</a>
instalando el paquete <code>gnome-session-fallback</code> se puede
seleccionar &quot;GNOME Classic&quot; en gdm o LightDM... Menos
mal.</p>" "
Parece que en este caso la actualización a Ubuntu
Oneiric Ocelot (11.10) no es tan sencilla ni tan poco problemática
como otras. Primero, la imposición de Unity. Estoy todavía tratando
de digerirla. Primero diré que NO ME GUSTA NADA. Ni en
2D ni en 3D. Linux no es Mac, por mucho que se empeñen en hacerlo
parecer, en quitar el botón derecho a todos los paneles (claro, aquí
seguro que los desarrol[...]" "
Parece que en este caso la actualización a Ubuntu
 Oneiric Ocelot (11.10) no es tan sencilla ni tan poco problemática
 como otras. Primero, la imposición de Unity. Estoy todavía tratando
 de digerirla. Primero diré que NO ME GUSTA NADA. Ni en
 2D ni en 3D. Linux no es Mac, por mucho que se empeñen en hacerlo
 parecer, en quitar el botón derecho a todos los paneles (claro, aquí
 seguro que los desarrolladores de Ubuntu usan Mac para todo...),
 etc.
Pero es que además la actualización no va bien. Siempre
 quedan flecos sueltos. En algunos la barra izquierda no sale cuando
 acercas el ratón. No hay manera de configurar cómo aparece esa barra,
 a no ser que te vuelvas loco y busques por Internet y te des cuenta
 de que tienes que instalar el
 paquete compizconfig-settings-manager, y ahí tienes una
 pestaña &quot;Unity&quot; que sirve para configurar también la barra
 lateral (tamaño, aparición, etc.). Por último, por ejemplo, si
 teníais configurados applets para mostrar la carga de CPU,
 red, etc., o el tiempo, temperatura, etc., estos tampoco aparecen
 directamente. La solución es instalar manualmente (y ejecutar y
 posteriormente configurar) los
 paquetes indicator-weather para el tiempo,
 e indicator-multiload para que muestre el uso de CPU,
 memoria y red. Al ejecutarlos, se establecen en la barra superior tal
 que así:
Por cierto, que en este caso, no me aparece el icono del tiempo,
 ni tampoco el icono de terminar la sesión, que está escondido hacia
 la derecha. Tampoco se pueden mover los iconos, porque el botón
 derecho no lleva esa opción.
ACTUALIZACIÓN: Por lo que
veo aquí
instalando el paquete gnome-session-fallback se puede
seleccionar &quot;GNOME Classic&quot; en gdm o LightDM... Menos
mal." (general ubuntu oneiric ocelot linux español spanish) "actualizacion-a-ubuntu-oneiric-ocelot-1110" string 18 october 2011 1 19 ((:hours . 1) (:minutes . 19) (:day . 18) (:month . 10) (:year . 2011))] [cl-struct-fmb-post "&quot;Conferencia&quot; &quot;internacional&quot; sobre el futuro de ETA..." "
<p>¿De verdad alguien se cree esa pantomima? Vergüenza les
 debería dar. Qué burdo espectáculo. Ahora la banda acatará la petición de tan excelso comité.</p>" "
¿De verdad alguien se cree esa pantomima? Vergüenza les
debería dar. Qué burdo espectáculo. Ahora la banda acatará la petición de tan excelso comité." "
¿De verdad alguien se cree esa pantomima? Vergüenza les
 debería dar. Qué burdo espectáculo. Ahora la banda acatará la petición de tan excelso comité." (general españa español spanish) "quotconferenciaquot-quotinternacionalquot-sobre-el-futuro-de-eta" string 18 october 2011 0 56 ((:hours . 0) (:minutes . 56) (:day . 18) (:month . 10) (:year . 2011))] [cl-struct-fmb-post "Schopenhauer: El amor, las mujeres y la muerte" "
<p>Hace mucho tiempo, mi amigo y compañero de trabajo
Ginés me dejó un libro de Schopenhauer con este título (por cierto,
voy a devolvérselo hoy mismo). A su vez se lo había dejado Jesús
García Molina.  No sé exactamente por qué me lo dejó ni por qué se lo
dejó aquél a Ginés. Cuando uno oye el nombre de Schopenhauer, reputado
filósofo del siglo XVIII, se imagina a un pensador avanzado en su
tiempo, o con un conocimiento profundo de la naturaleza humana. Cuál
es mi sorpresa al leer el capítulo dedicado a las mujeres, cito
textualmente:</p>
<blockquote>Sólo el aspecto de la mujer revela que no está
destinada ni a los grandes trabajos de la inteligencia ni a los
grandes trabajos materiales. Paga su deuda a la vida, no con la
acción, sino con el sufrimiento, los dolores del parto, los inquietos
cuidados de la infancia; tiene que obedecer al hombre, ser una
compañera pacienzuda que le serene. No está hecha para los grandes
esfuerzos ni para las penas o los placeres excesivos. [...]</blockquote>

<p>Ahí queda eso. Creo que ningún ser humano se echó tanta
mierda (con perdón) encima con un sólo párrafo... Incomprensible,
incluso para la época. Mucho menos para ser considerado un reputado
filósofo.</p>" "
Hace mucho tiempo, mi amigo y compañero de trabajo
Ginés me dejó un libro de Schopenhauer con este título (por cierto,
voy a devolvérselo hoy mismo). A su vez se lo había dejado Jesús
García Molina.  No sé exactamente por qué me lo dejó ni por qué se lo
dejó aquél a Ginés. Cuando uno oye el nombre de Schopenhauer, reputado
filósofo del siglo XVIII, se imagina a un pensador avanzado en su
tiempo,[...]" "
Hace mucho tiempo, mi amigo y compañero de trabajo
Ginés me dejó un libro de Schopenhauer con este título (por cierto,
voy a devolvérselo hoy mismo). A su vez se lo había dejado Jesús
García Molina.  No sé exactamente por qué me lo dejó ni por qué se lo
dejó aquél a Ginés. Cuando uno oye el nombre de Schopenhauer, reputado
filósofo del siglo XVIII, se imagina a un pensador avanzado en su
tiempo, o con un conocimiento profundo de la naturaleza humana. Cuál
es mi sorpresa al leer el capítulo dedicado a las mujeres, cito
textualmente:
Sólo el aspecto de la mujer revela que no está
destinada ni a los grandes trabajos de la inteligencia ni a los
grandes trabajos materiales. Paga su deuda a la vida, no con la
acción, sino con el sufrimiento, los dolores del parto, los inquietos
cuidados de la infancia; tiene que obedecer al hombre, ser una
compañera pacienzuda que le serene. No está hecha para los grandes
esfuerzos ni para las penas o los placeres excesivos. [...]

Ahí queda eso. Creo que ningún ser humano se echó tanta
mierda (con perdón) encima con un sólo párrafo... Incomprensible,
incluso para la época. Mucho menos para ser considerado un reputado
filósofo." (filosofía mujer schopenhauer español spanish) "schopenhauer-el-amor-las-mujeres-y-la-muerte" string 13 october 2011 11 39 ((:hours . 11) (:minutes . 39) (:day . 13) (:month . 10) (:year . 2011))] [cl-struct-fmb-post "Muere Dennis Ritchie" "
<p>A todo aquel que haya programado alguna vez en C, o en
alguno de los cientos de lenguajes que lo tomaron como guía, no puede
más que apenar la noticia
de <a href=\"http://www.biobiochile.cl/2011/10/12/muere-dennis-ritchie-padre-del-lenguaje-de-programacion-c-y-el-sistema-operativo-unix.shtml\" rel=\"interesting link\">su muerte</a>. Adiós a un grande de la informática (este sí).</p>" "
A todo aquel que haya programado alguna vez en C, o en
alguno de los cientos de lenguajes que lo tomaron como guía, no puede
más que apenar la noticia
de su muerte. Adiós a un grande de la informática (este sí)." "
A todo aquel que haya programado alguna vez en C, o en
alguno de los cientos de lenguajes que lo tomaron como guía, no puede
más que apenar la noticia
de su muerte. Adiós a un grande de la informática (este sí)." (c programming español spanish) "muere-dennis-ritchie" string 13 october 2011 10 43 ((:hours . 10) (:minutes . 43) (:day . 13) (:month . 10) (:year . 2011))] [cl-struct-fmb-post "Let Over Lambda--50 years of Lisp" "
<p>Hoy por casualidad he encontrado esta referencia, <a href=\"http://letoverlambda.com/index.cl/guest/chap2.html\">Let Over Lambda, Closures</a> de Doug Hoyte. Es
                  curioso que sin haberlo leído antes, la solución que
                  he dado al problema de extraer la descripción de una
                  entrada del blog sin <em>tags</em> HTML ha sido
                  así usando un <em>closure</em>.</p>" "
Hoy por casualidad he encontrado esta referencia, Let Over Lambda, Closures de Doug Hoyte. Es
curioso que sin haberlo leído antes, la solución que
he dado al problema de extraer la descripción de una
entrada del blog sin tags HTML ha sido
así usando un closure." "
Hoy por casualidad he encontrado esta referencia, Let Over Lambda, Closures de Doug Hoyte. Es
                  curioso que sin haberlo leído antes, la solución que
                  he dado al problema de extraer la descripción de una
                  entrada del blog sin tags HTML ha sido
                  así usando un closure." (español spanish programming lisp common-lisp blog) "let-over-lambda50-years-of-lisp" string 9 october 2011 23 6 ((:hours . 23) (:minutes . 6) (:day . 9) (:month . 10) (:year . 2011))] [cl-struct-fmb-post "Peggy Lee--It is a Good Day" "
<p>Siempre me ha gustado esta canción. Curiosamente la utilizan actualmente dos anuncios de la tele. Me sirve también para probar la incrustación de canciones de Grooveshark.</p><object width=\"250\" height=\"40\"><param name=\"movie\" value=\"http://grooveshark.com/songWidget.swf\" /><param name=\"wmode\" value=\"window\" /><param name=\"allowScriptAccess\" value=\"always\" /><param name=\"flashvars\" value=\"hostname=cowbell.grooveshark.com&amp;songIDs=27103833&amp;style=metal&amp;p=0\" /><embed src=\"http://grooveshark.com/songWidget.swf\" type=\"application/x-shockwave-flash\" width=\"250\" height=\"40\" flashvars=\"hostname=cowbell.grooveshark.com&amp;songIDs=27103833&amp;style=metal&amp;p=0\" allowScriptAccess=\"always\" wmode=\"window\" /></object>" "
Siempre me ha gustado esta canción. Curiosamente la utilizan actualmente dos anuncios de la tele. Me sirve también para probar la incrustación de canciones de Grooveshark." "
Siempre me ha gustado esta canción. Curiosamente la utilizan actualmente dos anuncios de la tele. Me sirve también para probar la incrustación de canciones de Grooveshark." (español spanish general grooveshark music) "peggy-leeit-is-a-good-day" string 6 october 2011 12 36 ((:hours . 12) (:minutes . 36) (:day . 6) (:month . 10) (:year . 2011))] [cl-struct-fmb-post "Búsqueda en el blog" "
<p>Como véis, todavía no funciona la búsqueda en el blog,
pero tengo una idea muy interesante para implementarla. Recordad que
el blog se genera estáticamente, así que no puedo depender de ningún
proceso de servidor, así que, por decirlo de alguna manera, tengo que
precalcular la búsqueda y almacenarla en algún sitio, que además, no
entorpezca con el blog (no tarde más tiempo en cargar, por
ejemplo). Lo que estoy preparando lo explicaré con tranquilidad. Por
ahora, valga una muestra de lo que llevo implementado: </p>
<pre class=\"prettyprint lang-lisp\">
BLOG> (hash-table-count
       *words-to-post-hash*)
18119
</pre>
<p>18119 palabras diferentes. Ahora los posts que
contienen \"corba\", y sus títulos:</p>
<pre class=\"prettyprint lang-lisp\">
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
</pre>
<p>Lo cual es, por cierto, una magnífica lista de entradas para esa
palabra... Esta información también me permitirá añadir al final un
conjunto de \"posts relacionados\" en cada entrada.</p>" "
Como véis, todavía no funciona la búsqueda en el blog,
pero tengo una idea muy interesante para implementarla. Recordad que
el blog se genera estáticamente, así que no puedo depender de ningún
proceso de servidor, así que, por decirlo de alguna manera, tengo que
precalcular la búsqueda y almacenarla en algún sitio, que además, no
entorpezca con el blog (no tarde más tiempo en cargar, por
ejemplo[...]" "
Como véis, todavía no funciona la búsqueda en el blog,
pero tengo una idea muy interesante para implementarla. Recordad que
el blog se genera estáticamente, así que no puedo depender de ningún
proceso de servidor, así que, por decirlo de alguna manera, tengo que
precalcular la búsqueda y almacenarla en algún sitio, que además, no
entorpezca con el blog (no tarde más tiempo en cargar, por
ejemplo). Lo que estoy preparando lo explicaré con tranquilidad. Por
ahora, valga una muestra de lo que llevo implementado: 

BLOG> (hash-table-count
       *words-to-post-hash*)
18119

18119 palabras diferentes. Ahora los posts que
contienen \"corba\", y sus títulos:

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

Lo cual es, por cierto, una magnífica lista de entradas para esa
palabra... Esta información también me permitirá añadir al final un
conjunto de \"posts relacionados\" en cada entrada." (español spanish blog common-lisp lisp programming) "busqueda-en-el-blog" string 5 october 2011 2 31 ((:hours . 2) (:minutes . 31) (:day . 5) (:month . 10) (:year . 2011))] [cl-struct-fmb-post "pacman, el gestor de paquetes de Arch Linux" "
<p>Tengo en alguna máquina antigua Arch Linux porque va muy
bien, es sencillo y está optimizado para sistemas pequeños. Hoy, por
casualidad he visto la versión del gestor de paquetes, <code>pacman</code> y me ha aparecido esto:</p>
<pre>
[dsevilla@dsr ~]$ pacman -V

 .--.                  Pacman v3.5.4 - libalpm v6.0.4
/ _.-' .-.  .-.  .-.   Copyright (C) 2006-2011 Pacman Development Team
\\  '-. '-'  '-'  '-'   Copyright (C) 2002-2006 Judd Vinet
 '--'
                       Este programa puede distribuirse libremente bajo
                       los términos de la licencia GNU General Public License
</pre>
<p>El juego de palabras es claro. <code>pacman</code>, de
\"package manager\", y también del conocido juego del comecocos.</p>" "
Tengo en alguna máquina antigua Arch Linux porque va muy
bien, es sencillo y está optimizado para sistemas pequeños. Hoy, por
casualidad he visto la versión del gestor de paquetes, pacman y me ha aparecido esto:

[dsevilla@dsr ~]$ pacman -V

.--.                  Pacman v3.5.4 - libalpm v6.0.4
/ _.-' .-.  .-.  .-.   Copyright (C) 2006-2011 Pacman Development Team
\\  '-. '-'  '-'  '-'   Copyright[...]" "
Tengo en alguna máquina antigua Arch Linux porque va muy
bien, es sencillo y está optimizado para sistemas pequeños. Hoy, por
casualidad he visto la versión del gestor de paquetes, pacman y me ha aparecido esto:

[dsevilla@dsr ~]$ pacman -V

 .--.                  Pacman v3.5.4 - libalpm v6.0.4
/ _.-' .-.  .-.  .-.   Copyright (C) 2006-2011 Pacman Development Team
\\  '-. '-'  '-'  '-'   Copyright (C) 2002-2006 Judd Vinet
 '--'
                       Este programa puede distribuirse libremente bajo
                       los términos de la licencia GNU General Public License

El juego de palabras es claro. pacman, de
\"package manager\", y también del conocido juego del comecocos." (linux español spanish) "pacman-el-gestor-de-paquetes-de-arch-linux" string 4 october 2011 12 43 ((:hours . 12) (:minutes . 43) (:day . 4) (:month . 10) (:year . 2011))] [cl-struct-fmb-post "Integración de APIs en el modelado" "
<p>El magnífico trabajo de Javier Cánovas modelando APIs
de programación aparece enlazado en el blog <a href=\"http://modeling-languages.com/\" rel=\"interesting link\">Modeling Languages</a>. Tuve la suerte de estar en el tribunal de su tesis, y es una pena
que se haya ido a Francia a continuar su trabajo. Le deso lo mejor. La
entrada la tenéis <a href=\"http://modeling-languages.com/integrating-apis-in-model-driven-engineering/\" rel=\"interesting link\">aquí</a>.</p>" "
El magnífico trabajo de Javier Cánovas modelando APIs
de programación aparece enlazado en el blog Modeling Languages. Tuve la suerte de estar en el tribunal de su tesis, y es una pena
que se haya ido a Francia a continuar su trabajo. Le deso lo mejor. La
entrada la tenéis aquí." "
El magnífico trabajo de Javier Cánovas modelando APIs
de programación aparece enlazado en el blog Modeling Languages. Tuve la suerte de estar en el tribunal de su tesis, y es una pena
que se haya ido a Francia a continuar su trabajo. Le deso lo mejor. La
entrada la tenéis aquí." (modeling spanish mde español) "integracion-de-apis-en-el-modelado" string 4 october 2011 1 0 ((:hours . 1) (:minutes . 0) (:day . 4) (:month . 10) (:year . 2011))] [cl-struct-fmb-post "Attitude" "<img src=\"http://neuromancer.inf.um.es/fm/img/DSC_0174.jpg\" alt=\"Blog image.\"></img><img src=\"http://neuromancer.inf.um.es/fm/img/DSC_0059.jpg\" alt=\"Blog image.\"></img>" "" "" (family photography english) "attitude" string 30 september 2011 1 11 ((:hours . 1) (:minutes . 11) (:day . 30) (:month . 9) (:year . 2011))] [cl-struct-fmb-post "Imágenes en el blog" "
<p>Iba a introducir imágenes en el blog y he querido escribir
una pequeña función que hace más sencillo introducir fácilmente las
imágenes con la ruta por defecto, y, si procede, un enlace para las
mismas. La función queda como sigue:</p>
<pre class=\"prettyprint lang-lisp\">(defun blog-img (img-file &amp;key alt anchor title params)
  (let* ((param-list
          (cons `(src . ,(format nil \"~A/~A\" *base-img-url* img-file))
                (cons `(alt . ,(or alt \"Blog image.\")) ; alt is obligatory
                      (when title `((title . ,title))))))
         (param-list-1 (append param-list params))
         (img-html (img param-list-1)))
    (if anchor
        (a `((href . ,anchor)) img-html)
        img-html)))
</pre>
<p>¿No es bonito? En particular me gusta el uso
        del <em>seudoquote</em>. Las funciones <code>img</code>
        y <code>a</code> generan el HTML para las imágenes y para los
        enlaces, respectivamente. Un ejemplo de uso de esa función
        sería:</p>
<pre class=\"prettyprint lang-lisp\">(blog-img \"abc.jpg\" :alt \"Alt text\" :params '((:width . 500)))
</pre>
<p>donde se elige el fichero <code>img/abc.jpg</code> con un
        texto alternativo y con el conjunto de parámetros adicionales,
        entre ellos el ancho de la imagen. Si se especifica un elemento <code>anchor</code> el código que se genera es el siguiente:</p>
<pre class=\"prettyprint lang-lisp\">(blog-img \"abc.jpg\" 'anchor \"http://wherever.com\"  'alt \"bah\" 'params '(('width . 500)))</pre>
<pre class=\"prettyprint\">
&lt;A HREF=\"http://wherever.com\"&gt;&lt;IMG SRC=\"img/abc.jpg\" ALT=\"bah\" WIDTH=\"500\"&gt;&lt;/IMG&gt;&lt;/A&gt;</pre>" "
Iba a introducir imágenes en el blog y he querido escribir
una pequeña función que hace más sencillo introducir fácilmente las
imágenes con la ruta por defecto, y, si procede, un enlace para las
mismas. La función queda como sigue:
(defun blog-img (img-file &amp;key alt anchor title params)
(let* ((param-list
(cons `(src . ,(format nil \"~A/~A\" *base-img-url* img-file))
(cons `(alt . ,(or alt \"Bl[...]" "
Iba a introducir imágenes en el blog y he querido escribir
una pequeña función que hace más sencillo introducir fácilmente las
imágenes con la ruta por defecto, y, si procede, un enlace para las
mismas. La función queda como sigue:
(defun blog-img (img-file &amp;key alt anchor title params)
  (let* ((param-list
          (cons `(src . ,(format nil \"~A/~A\" *base-img-url* img-file))
                (cons `(alt . ,(or alt \"Blog image.\")) ; alt is obligatory
                      (when title `((title . ,title))))))
         (param-list-1 (append param-list params))
         (img-html (img param-list-1)))
    (if anchor
        (a `((href . ,anchor)) img-html)
        img-html)))

¿No es bonito? En particular me gusta el uso
        del seudoquote. Las funciones img
        y a generan el HTML para las imágenes y para los
        enlaces, respectivamente. Un ejemplo de uso de esa función
        sería:
(blog-img \"abc.jpg\" :alt \"Alt text\" :params '((:width . 500)))

donde se elige el fichero img/abc.jpg con un
        texto alternativo y con el conjunto de parámetros adicionales,
        entre ellos el ancho de la imagen. Si se especifica un elemento anchor el código que se genera es el siguiente:
(blog-img \"abc.jpg\" 'anchor \"http://wherever.com\"  'alt \"bah\" 'params '(('width . 500)))

&lt;A HREF=\"http://wherever.com\"&gt;&lt;IMG SRC=\"img/abc.jpg\" ALT=\"bah\" WIDTH=\"500\"&gt;&lt;/IMG&gt;&lt;/A&gt;" (general blog español spanish common-lisp lisp programming) "imagenes-en-el-blog" string 30 september 2011 0 49 ((:hours . 0) (:minutes . 49) (:day . 30) (:month . 9) (:year . 2011))] [cl-struct-fmb-post "Estadísticas de tiempo de generación del blog" "
<p>De cara a optimizar la generación de las páginas del blog
con multiprogramación, he querido registrar el tiempo que tarda en
ejecutar la generación en el ordenador que se genera, para compararla
después con la optimización. Para mi sorpresa, la mayor parte del os 8
segundos que lleva la generación se la lleva el leer y compilar el
fichero Lisp que contiene las entradas antiguas (1.3MB), mientras que
la generación de todas las páginas no tarda más de 4 segundos:</p>
<pre>[dsevilla@neuromancer:~/svn/blog]$ sbcl --script packages.lisp
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
</pre>
<p>Esto hace que la optimización, como máximo, sólo pueda
reducir esos 0,4 segundos que tarda la generación. Aún así lo intentaré
como un ejercicio de programación. La otra idea será ver optimizar el
proceso de carga quizá a través de pre-compilación de los ficheros
.lisp. Por cierto, para que luego digan que los lenguajes
interpretados son lentos... 1 segundo en generar 34MB de ficheros de
texto.</p>
<p>La última sorpresa... Por casualidad he probado <code>clisp</code>... Bien, aquí la carga de los ficheros .lisp es
 instantánea, y la ejecución es incluso más rápida (diría incluso
 increíblemente rápida:</p>
<pre>[dsevilla@neuromancer:~/svn/blog]$ clisp packages.lisp
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
</pre>
<p>Comparando el tiempo de ejecución visto por el usuario:</p>
<pre>[dsevilla@neuromancer:~/svn/blog]$ time clisp packages.lisp
real	0m2.320s
user	0m1.970s
sys	0m0.310s
</pre>
<pre>[dsevilla@neuromancer:~/svn/blog]$ time sbcl --script packages.lisp
real	0m10.405s
user	0m9.940s
sys	0m0.440s
</pre>
<p>Esto es, ¡5 veces más rápido en general clisp que sbcl! Sin
embargo, mirando los datos de cada parte, hay resultados muy extraños
e inconsistentes. Por ejemplo, clisp tarda casi un segundo en generar
RSS, mientras que sbcl tarda 0,08 segundos (un orden de magnitud
menos). Estudiaré el código para ver dónde puede estar el problema,
pero por ahora, usaré clisp para generar el blog, aunque use sbcl, con
el magnífico entorno Slime para Emacs para seguir programando y probando.</p>" "
De cara a optimizar la generación de las páginas del blog
con multiprogramación, he querido registrar el tiempo que tarda en
ejecutar la generación en el ordenador que se genera, para compararla
después con la optimización. Para mi sorpresa, la mayor parte del os 8
segundos que lleva la generación se la lleva el leer y compilar el
fichero Lisp que contiene las entradas antiguas (1.3MB), mientras[...]" "
De cara a optimizar la generación de las páginas del blog
con multiprogramación, he querido registrar el tiempo que tarda en
ejecutar la generación en el ordenador que se genera, para compararla
después con la optimización. Para mi sorpresa, la mayor parte del os 8
segundos que lleva la generación se la lleva el leer y compilar el
fichero Lisp que contiene las entradas antiguas (1.3MB), mientras que
la generación de todas las páginas no tarda más de 4 segundos:
[dsevilla@neuromancer:~/svn/blog]$ sbcl --script packages.lisp
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

Esto hace que la optimización, como máximo, sólo pueda
reducir esos 0,4 segundos que tarda la generación. Aún así lo intentaré
como un ejercicio de programación. La otra idea será ver optimizar el
proceso de carga quizá a través de pre-compilación de los ficheros
.lisp. Por cierto, para que luego digan que los lenguajes
interpretados son lentos... 1 segundo en generar 34MB de ficheros de
texto.
La última sorpresa... Por casualidad he probado clisp... Bien, aquí la carga de los ficheros .lisp es
 instantánea, y la ejecución es incluso más rápida (diría incluso
 increíblemente rápida:
[dsevilla@neuromancer:~/svn/blog]$ clisp packages.lisp
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

Comparando el tiempo de ejecución visto por el usuario:
[dsevilla@neuromancer:~/svn/blog]$ time clisp packages.lisp
real	0m2.320s
user	0m1.970s
sys	0m0.310s

[dsevilla@neuromancer:~/svn/blog]$ time sbcl --script packages.lisp
real	0m10.405s
user	0m9.940s
sys	0m0.440s

Esto es, ¡5 veces más rápido en general clisp que sbcl! Sin
embargo, mirando los datos de cada parte, hay resultados muy extraños
e inconsistentes. Por ejemplo, clisp tarda casi un segundo en generar
RSS, mientras que sbcl tarda 0,08 segundos (un orden de magnitud
menos). Estudiaré el código para ver dónde puede estar el problema,
pero por ahora, usaré clisp para generar el blog, aunque use sbcl, con
el magnífico entorno Slime para Emacs para seguir programando y probando." (blog español programming common-lisp lisp spanish) "estadisticas-de-tiempo-de-generacion-del-blog" string 29 september 2011 16 17 ((:hours . 16) (:minutes . 17) (:day . 29) (:month . 9) (:year . 2011))] [cl-struct-fmb-post "Multiprocesamiento para generar el blog" "
<p>Siguiendo <a href=\"http://blog.viridian-project.de/2008/10/04/threads-in-sbcl/\" rel=\"interesting link\">este enlace</a> voy a intentar añadir multiprocesamiento a
la generación del blog para acelerarlo. No va a ser tan sencillo como
debería ser, por ejemplo, debería existir, como en Clojure, un <code>parallel map</code> pero la verdad es que no hay, sólo hilos
tradicionales... La ventaja, sin embargo, será grande, ya que todas
las páginas se pueden generar en paralelo.</p>" "
Siguiendo este enlace voy a intentar añadir multiprocesamiento a
la generación del blog para acelerarlo. No va a ser tan sencillo como
debería ser, por ejemplo, debería existir, como en Clojure, un parallel map pero la verdad es que no hay, sólo hilos
tradicionales... La ventaja, sin embargo, será grande, ya que todas
las páginas se pueden generar en paralelo." "
Siguiendo este enlace voy a intentar añadir multiprocesamiento a
la generación del blog para acelerarlo. No va a ser tan sencillo como
debería ser, por ejemplo, debería existir, como en Clojure, un parallel map pero la verdad es que no hay, sólo hilos
tradicionales... La ventaja, sin embargo, será grande, ya que todas
las páginas se pueden generar en paralelo." (blog español programming common-lisp lisp spanish) "multiprocesamiento-para-generar-el-blog" string 29 september 2011 0 27 ((:hours . 0) (:minutes . 27) (:day . 29) (:month . 9) (:year . 2011))] [cl-struct-fmb-post "Entradas del blog antiguo disponibles" "
<p>No sin algo de trabajo, salvando las idiosincrasias de SQL,
donde tenía alojado mi anterior blog con la estructura de base de
    datos de Wordpress, (por ejemplo, las comillas simples en SQL son
'', y no \\') y de Common-Lisp (por ejemplo, no acepta caracteres
especiales como \\n ni \\r), he conseguido añadir todas las entradas
del anterior blog. Ha sido sorprendentemente automático, dadas las
conversiones pertinentes (no muchas).</p>
<p>Pero lo que más me ha
sorprendido es que el blog actualmente, al ser generado estáticamente,
ocupa 34 MBytes de datos, está compuesto por 1393 ficheros HTML, y
tarda unos 5 segundos en generarse. No está mal para ser un lenguaje
interpretado. Y podría ser mucho más rápido si supiera optimizarlo
bien, y arreglara algún que otro algoritmo que podría hacerse más
rápido. También si pre-compilara el código en vez de hacerlo cada vez
que se genera el blog (esto lo añadiré al script de generación, que
recompile los ficheros sólo si han cambiado).</p>
<p>Al ser tantas entradas, he tenido que añadir una opción de
dividir todos las entradas en páginas, a un número de 50 entradas por
página (de la página principal salen 13 subpáginas). Ha sido algo
complicado integrar la generación de várias subpáginas en lo que ya
tenía, pero no me ha llevado mucho (una media hora). En parte ha sido
más complejo porque Common-Lisp no tiene una operación para partir una
lista (la de las entradas) eficientemente, y he tenido que hacerla
yo. No es muy compleja, pero tampoco trivial si quieres hacerla eficiente.</p>" "
No sin algo de trabajo, salvando las idiosincrasias de SQL,
donde tenía alojado mi anterior blog con la estructura de base de
datos de Wordpress, (por ejemplo, las comillas simples en SQL son
'', y no \\') y de Common-Lisp (por ejemplo, no acepta caracteres
especiales como \\n ni \\r), he conseguido añadir todas las entradas
del anterior blog. Ha sido sorprendentemente automático, dadas las
convers[...]" "
No sin algo de trabajo, salvando las idiosincrasias de SQL,
donde tenía alojado mi anterior blog con la estructura de base de
    datos de Wordpress, (por ejemplo, las comillas simples en SQL son
'', y no \\') y de Common-Lisp (por ejemplo, no acepta caracteres
especiales como \\n ni \\r), he conseguido añadir todas las entradas
del anterior blog. Ha sido sorprendentemente automático, dadas las
conversiones pertinentes (no muchas).
Pero lo que más me ha
sorprendido es que el blog actualmente, al ser generado estáticamente,
ocupa 34 MBytes de datos, está compuesto por 1393 ficheros HTML, y
tarda unos 5 segundos en generarse. No está mal para ser un lenguaje
interpretado. Y podría ser mucho más rápido si supiera optimizarlo
bien, y arreglara algún que otro algoritmo que podría hacerse más
rápido. También si pre-compilara el código en vez de hacerlo cada vez
que se genera el blog (esto lo añadiré al script de generación, que
recompile los ficheros sólo si han cambiado).
Al ser tantas entradas, he tenido que añadir una opción de
dividir todos las entradas en páginas, a un número de 50 entradas por
página (de la página principal salen 13 subpáginas). Ha sido algo
complicado integrar la generación de várias subpáginas en lo que ya
tenía, pero no me ha llevado mucho (una media hora). En parte ha sido
más complejo porque Common-Lisp no tiene una operación para partir una
lista (la de las entradas) eficientemente, y he tenido que hacerla
yo. No es muy compleja, pero tampoco trivial si quieres hacerla eficiente." (general blog español spanish) "entradas-del-blog-antiguo-disponibles" string 27 september 2011 21 16 ((:hours . 21) (:minutes . 16) (:day . 27) (:month . 9) (:year . 2011))] [cl-struct-fmb-post "Añadido colorización de código con google-code-prettify" "
<p>Pues no ha sido complicado. Simplemente he seguido las
instrucciones del README de la página <a href=\"http://code.google.com/p/google-code-prettify/\" rel=\"interesting link\">de google-code-prettify</a> y ya está.</p>" "
Pues no ha sido complicado. Simplemente he seguido las
instrucciones del README de la página de google-code-prettify y ya está." "
Pues no ha sido complicado. Simplemente he seguido las
instrucciones del README de la página de google-code-prettify y ya está." (general blog español spanish common-lisp lisp programming) "anadido-colorizacion-de-codigo-con-googlecodeprettify" string 23 september 2011 22 40 ((:hours . 22) (:minutes . 40) (:day . 23) (:month . 9) (:year . 2011))] [cl-struct-fmb-post "Fiestas en Mula" "
<p>Me alegro de que mi amigo Pedro Aurelio continúe su blog. En la <a href=\"http://pallamasjimenez.blogspot.com/2011/09/campanas.html\">última entrada de su blog</a>, aparte del sentimiento
religioso, que en mi caso es nulo, sí que echo de menos sentir el
sonido de mi pueblo, poder pasear tranquilamente por él... ¡No dudéis en
acercaros a Mula del 19 al 25 de septiembre!</p>" "
Me alegro de que mi amigo Pedro Aurelio continúe su blog. En la última entrada de su blog, aparte del sentimiento
religioso, que en mi caso es nulo, sí que echo de menos sentir el
sonido de mi pueblo, poder pasear tranquilamente por él... ¡No dudéis en
acercaros a Mula del 19 al 25 de septiembre!" "
Me alegro de que mi amigo Pedro Aurelio continúe su blog. En la última entrada de su blog, aparte del sentimiento
religioso, que en mi caso es nulo, sí que echo de menos sentir el
sonido de mi pueblo, poder pasear tranquilamente por él... ¡No dudéis en
acercaros a Mula del 19 al 25 de septiembre!" (general friends español spanish) "fiestas-en-mula" string 21 september 2011 22 0 ((:hours . 22) (:minutes . 0) (:day . 21) (:month . 9) (:year . 2011))] [cl-struct-fmb-post "Y las páginas de los tags" "
<p>Sólo por curiosidad, he aquí cómo está
implementada la generación de los links con diferente tamaño del <em>sidebar</em>:</p>
<pre class=\"prettyprint lang-lisp\">(defun categories-links ()
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
                                      (/ (- max-n-posts min-n-posts) 10)))))))))))</pre>
<p>Y eso sin contar con el cálculo de <code>*posts-for-category*</code>.</p>" "
Sólo por curiosidad, he aquí cómo está
implementada la generación de los links con diferente tamaño del sidebar:
(defun categories-links ()
(if *categories-links*
*categories-links*
(setf *categories-links* (multiple-value-bind (max-n-posts min-n-posts)
(loop for c being the hash-values in *posts-for-category*
maximizing (car c) into max
minimizing (car c) into min
finally (return (values max mi[...]" "
Sólo por curiosidad, he aquí cómo está
implementada la generación de los links con diferente tamaño del sidebar:
(defun categories-links ()
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
                                      (/ (- max-n-posts min-n-posts) 10)))))))))))
Y eso sin contar con el cálculo de *posts-for-category*." (general blog español spanish common-lisp lisp programming) "y-las-paginas-de-los-tags" string 20 september 2011 0 0 ((:hours . 0) (:minutes . 0) (:day . 20) (:month . 9) (:year . 2011))] [cl-struct-fmb-post "Ya funcionan los archivos" "
<p>No un gran logro, pero ya funcionan.</p>" "
No un gran logro, pero ya funcionan." "
No un gran logro, pero ya funcionan." (general blog) "ya-funcionan-los-archivos" string 20 september 2011 0 0 ((:hours . 0) (:minutes . 0) (:day . 20) (:month . 9) (:year . 2011))] [cl-struct-fmb-post "¡Blog online!" "
<p>Pues por ahora no funciona casi nada, pero el blog ya se
 auto-genera, lo cual está muy bien. Por ahora se generan las páginas
 de cada entrada (sin comentarios por ahora), y las categorías,
 también cada una en su página. No genera por ahora ni RSS ni Atom,
 pero eso es sencillo una vez que lo tengo todo funcionando. Como cada
 entrada es un fichero de texto, añadiré también macros de Emacs para
 generar enlaces con macros...</p>" "
Pues por ahora no funciona casi nada, pero el blog ya se
auto-genera, lo cual está muy bien. Por ahora se generan las páginas
de cada entrada (sin comentarios por ahora), y las categorías,
también cada una en su página. No genera por ahora ni RSS ni Atom,
pero eso es sencillo una vez que lo tengo todo funcionando. Como cada
entrada es un fichero de texto, añadiré también macros de Emacs para
gen[...]" "
Pues por ahora no funciona casi nada, pero el blog ya se
 auto-genera, lo cual está muy bien. Por ahora se generan las páginas
 de cada entrada (sin comentarios por ahora), y las categorías,
 también cada una en su página. No genera por ahora ni RSS ni Atom,
 pero eso es sencillo una vez que lo tengo todo funcionando. Como cada
 entrada es un fichero de texto, añadiré también macros de Emacs para
 generar enlaces con macros..." (general español spanish) "blog-online" string 18 september 2011 0 0 ((:hours . 0) (:minutes . 0) (:day . 18) (:month . 9) (:year . 2011))] [cl-struct-fmb-post "¡Primera entrada!" "
<p>Esta es la primera entrada de este nuevo blog cuyo
          generador está escrito en Common-Lisp. ¿Lisp? Sí, más de 50
          años después sigue vivo, y sinceramente, es una maravilla
          aprenderlo y usarlo. Iré mostrando en el futuro cómo se
          genera.</p>" "
Esta es la primera entrada de este nuevo blog cuyo
generador está escrito en Common-Lisp. ¿Lisp? Sí, más de 50
años después sigue vivo, y sinceramente, es una maravilla
aprenderlo y usarlo. Iré mostrando en el futuro cómo se
genera." "
Esta es la primera entrada de este nuevo blog cuyo
          generador está escrito en Common-Lisp. ¿Lisp? Sí, más de 50
          años después sigue vivo, y sinceramente, es una maravilla
          aprenderlo y usarlo. Iré mostrando en el futuro cómo se
          genera." (general lisp common-lisp spanish español) "primera-entrada" string 13 september 2011 0 0 ((:hours . 0) (:minutes . 0) (:day . 13) (:month . 9) (:year . 2011))] [cl-struct-fmb-post "Martina, Emma" "
        <a href=\"http://www.flickr.com/photos/dsevilla/5679519416/\" title=\"photo sharing\"><img src=\"http://farm6.static.flickr.com/5110/5679519416_505ea1e173.jpg\" alt=\"\" /></a><br />
<br />
        <a href=\"http://www.flickr.com/photos/dsevilla/5679519416/\">martina, emma <img src='wp-includes/images/smilies/icon_smile.gif' alt=':)' class='wp-smiley' /> </a>, originally uploaded by <a href=\"http://www.flickr.com/photos/dsevilla/\">dsevilla</a>.

<p>
        <i>A través de Flickr:</i><br />
De hace algunos meses.</p>
<p>Lipca Rollop Ennit 8cm/2.8 + Fuji Neopan 400cn
</p>
" "


martina, emma  , originally uploaded by dsevilla.


A través de Flickr:
De hace algunos meses.
Lipca Rollop Ennit 8cm/2.8 + Fuji Neopan 400cn

" "
        

        martina, emma  , originally uploaded by dsevilla.


        A través de Flickr:
De hace algunos meses.
Lipca Rollop Ennit 8cm/2.8 + Fuji Neopan 400cn

" (family photography spanish español) "martina-emma" string 5 5 2011 0 0 ((:hours . 0) (:minutes . 0) (:day . 5) (:month . 5) (:year . 2011))] [cl-struct-fmb-post "Primera aproximación de un mecanismo de actores para C++" "<p>Desde hace tiempo quiero escribir esta entrada, pero por falta de
tiempo no he podido. El mecanismo de actores se utiliza en lenguajes
de programación como Erlang y Scala para sincronizar diferentes
«actores» que están funcionando en el sistema. Tradicionalmente, la
programación con hilos (salvo en casos como BSP, por ejemplo) se ha
realizado básicamente como la programación monoproceso, pero haciendo
que el programador tuviera en la cabeza las posibles colisiones que
varios hilos ejecutando un código podrían tener.</p> <p>La otra cara
de esta moneda la han tenido lenguajes y paradigmas que cambiaban la
manera de programación hacia esquemas que hicieran más fácil escalar
en el número de hilos/cores a la vez que permitían una programación
más natural de programas multihilo. Estos nuevos paradigmas también
evitaban, por diseño, los problemas que se dan con los candados,
reentrancia, etc.</p> <p>El paradigma sobre el que hablaré hoy es el
de los actores. Este mecanismo, que data de 1986, se utiliza en Erlang
y en <a
href=\"http://lamp.epfl.ch/~phaller/doc/haller07coord.pdf\">Scala</a>,
por ejemplo, pero no he encontrado ejemplos de cómo implementar este
mecanismo en C++, salvo un <a
href=\"http://people.cs.vt.edu/~kafura/PreviousPapers/act++-joop93.pdf\">artículo
de 1993 de Kafura, Mukherji y Lavender</a> en el que no se hace uso de
ninguna característica «moderna» de C++, como los tipos parametrizados
o la sobrecarga de operadores.</p>

<p>En resumen, el mecanismo de actores se basa en definir un actor
como un objeto reactivo que se ejecuta en su propio hilo. Son
similares a los objetos <em>stricto sensu</em>, en el sentido de que
se les puede enviar invocaciones (en mi caso eventos), y los actores
responden ejecutándolos, como los objetos normales. No obstante, son
diferentes porque las invocaciones se ejecutan de manera que no causan
problemas de concurrencia. ¿Cómo? Pues asegurando que todas las
invocaciones sobre un actor se ejecutan en un mismo hilo. En este
sentido, un actor también aglutina, en general, un hilo de ejecución
propio en el que se ejecutan las llamadas al mismo (esto puede no ser
así exactamente, pero la idea es la misma).</p> <p>Existe una
diferencia con los paradigmas tradicionales de programación. Por
ejemplo, para no causar problemas de concurrencia, todos los métodos
de un objeto se podrían marcar como «<code>synchronized</code>» al
estilo de Java. Esto, efectivamente, hace que no haya problemas de
concurrencia (al menos los más usuales), ya que todas las invocaciones
a un objeto se realizan en exclusión mutua. Sin embargo, una
invocación a objeto normal lleva consigo asociada un hilo de
ejecución, y el hilo de ejecución del objeto llamante es el que
realiza la llamada al objeto llamado, con lo que también se tienen que
prevenir problemas como interbloqueos, esperas de candados, etc.</p>
<p>En resumen, sería casi como un sistema basado en eventos en donde
los objetos se envían mensajes que son a su vez procesados en los
hilos respectivos de cada actor. Ahora bien, ¿cómo implementar en C++
este mecanismo sin ser excesivamente intrusivo, teniendo en cuenta que
el mecanismo de envío de eventos no existe en C++? Pensé en utilizar
<code>boost.signal</code>, pero éste no asegura que el objeto receptor
va a ejecutar la señal en su propio hilo. Los requisitos que establecí
pues para el desarrollo fueron los siguientes:</p> <ol> <li>El
mecanismo debe ser poco intrusivo, en el sentido de que las clases que
quieran beneficiarse de este mecanismo no tienen por qué escribirse
heredando de un interfaz en particular, sino que sólo tienen que
definir una serie de tipos para saber tratarlas como actor.  </li>
<li>Cualquier clase puede definir de manera sencilla qué eventos puede
recibir y cómo actuará ante cualquier evento, y estos serán los únicos
requisitos que tendrá que especificar la clase.</li>

<li>Las clases pueden modificar de forma sencilla qué eventos producen y reciben.</li>
<li>Las clases no tendrán que preocuparse de tratar con hilos, asincronía, almacenamiento y reproducción de eventos, etc.
</li>
<li>El mecanismo de envío de eventos debe estar integrado en el lenguaje C++ de forma natural. Por ejemplo, con un operador que muestre que se está enviando un evento: <code>objeto &lt;&lt;  mensaje;</code>.</li>
</ol>
<p>Con estos requisitos, pensé hacer la clase <code>actor</code> que pudiera aceptar como parámetro cualquier otra clase, y convertirla así en un actor. Este mecanismo es poco intrusivo, sólo obligando a que la clase que se quiere beneficiar de este mecanismo especifique qué eventos es capaz de recibir. La clase actor que me quedó fue la siguiente, con comentarios al estilo de la <em>literate programming</em> (si alguien está interesado le puedo pasar el código sin los comentarios):</p>

<pre>
<span style=\"color: #6495ed; font-weight: bold;\">template</span> &lt;<span style=\"color: #6495ed; font-weight: bold;\">typename</span> <span style=\"color: #9290ff;\">Klass</span>&gt;
<span style=\"color: #6495ed; font-weight: bold;\">struct</span> <span style=\"color: #9290ff;\">actor</span>
{
    <span style=\"color: #6495ed; font-weight: bold;\">typedef</span> <span style=\"color: #6495ed; font-weight: bold;\">typename</span> <span style=\"color: #9932cc; font-weight: bold;\">Klass</span>::<span style=\"color: #9290ff;\">events_type</span> <span style=\"color: #9290ff;\">VariantType</span>;

</pre>
<p>Uno de los requisitos que tiene que proveer la clase que se va a convertir en actor es ofrecer el tipo <code>VariantType</code> con los distintos eventos que va a poder recibir. Para esto se usará el tipo <code>boost.variant</code> como se verá después.</p>
<pre>
    <span style=\"color: #6495ed; font-weight: bold;\">typedef</span> <span style=\"color: #9290ff;\">actor</span>&lt;<span style=\"color: #9290ff;\">Klass</span>&gt; <span style=\"color: #9290ff;\">self</span>;

    <span style=\"color: #87ceeb;\">actor</span> (<span style=\"color: #9290ff;\">Klass</span>&amp; <span style=\"color: #98fb98;\">a</span>)
        : delegate_ (a)
    {
        thread_ = <span style=\"color: #9932cc; font-weight: bold;\">boost</span>::thread (<span style=\"color: #9932cc; font-weight: bold;\">boost</span>::ref (*<span style=\"color: #6495ed; font-weight: bold;\">this</span>));
    }

</pre>
<p>Cada actor posee su propio hilo. Esto, por supuesto puede modificarse después. Sólo quería hacer una prueba de concepto. En scala existen <em>schedulers</em> que enlazan actores con hilos.</p>
<pre>
    <span style=\"color: #66cdaa;\">// </span><span style=\"color: #66cdaa;\">Thread func.
</span>    <span style=\"color: #9290ff;\">void</span> <span style=\"color: #6495ed; font-weight: bold;\">operator</span><span style=\"color: #87ceeb;\">()</span>()
    {
        <span style=\"color: #9932cc; font-weight: bold;\">std</span>::cout &lt;&lt; <span style=\"color: #32cd32;\">&#8220;running thread&#8221;</span> &lt;&lt; <span style=\"color: #9932cc; font-weight: bold;\">std</span>::endl;

        <span style=\"color: #6495ed; font-weight: bold;\">while</span>(!stop_)
        {
            <span style=\"color: #9290ff;\">bool</span> <span style=\"color: #98fb98;\">b</span>;
            {
                <span style=\"color: #9932cc; font-weight: bold;\">boost</span>::<span style=\"color: #9290ff;\">lock_guard</span>&lt;<span style=\"color: #9932cc; font-weight: bold;\">boost</span>::mutex&gt; <span style=\"color: #98fb98;\">guard</span> (list_mutex_);
                b = el_.empty();
            }

            <span style=\"color: #6495ed; font-weight: bold;\">if</span> (b)
            {
                <span style=\"color: #9932cc; font-weight: bold;\">boost</span>::<span style=\"color: #9290ff;\">unique_lock</span>&lt;<span style=\"color: #9932cc; font-weight: bold;\">boost</span>::mutex&gt; <span style=\"color: #98fb98;\">lock</span> (mut_);

                <span style=\"color: #66cdaa;\">// </span><span style=\"color: #66cdaa;\">wait on the cond. var.

</span>                cond_.wait (lock);
            }

            <span style=\"color: #6495ed; font-weight: bold;\">while</span> (<span style=\"color: #9932cc; font-weight: bold;\">true</span>)
            {
                <span style=\"color: #9290ff;\">VariantType</span> <span style=\"color: #98fb98;\">vtv</span>;
                {
                    <span style=\"color: #9932cc; font-weight: bold;\">boost</span>::<span style=\"color: #9290ff;\">lock_guard</span>&lt;<span style=\"color: #9932cc; font-weight: bold;\">boost</span>::mutex&gt; <span style=\"color: #98fb98;\">guard</span> (list_mutex_);
                    <span style=\"color: #6495ed; font-weight: bold;\">if</span> (el_.empty())
                        <span style=\"color: #6495ed; font-weight: bold;\">break</span>;

                    vtv = el_.front();
                    el_.pop_front();
                }

                <span style=\"color: #66cdaa;\">// </span><span style=\"color: #66cdaa;\">Call the delegate without holding the mutex locked

</span>                <span style=\"color: #9932cc; font-weight: bold;\">boost</span>::apply_visitor (<span style=\"color: #9932cc; font-weight: bold;\">detail</span>::<span style=\"color: #9290ff;\">event_caller</span>&lt;Klass&gt; (<span style=\"color: #98fb98;\">delegate_</span>),
                                      vtv);
            }
        }
    }
</pre>
<p>El <code>operator()()</code> de la clase actor ejecuta el código del hilo. He utilizado variables de condición porque me parecen más ricas semánticamente. El hilo básicamente extrae eventos de la cola de eventos y los ejecuta sobre el delegate. Como los eventos de la cola pueden ser de diferentes <em>tipos</em> (nótese que este punto es especialmente difícil en C++), hay que utilizar estructuras que permitan tratar diferentes tipos de eventos de forma genérica. Para eso he usado la construcción <code>boost::apply_visitor</code> de <code>boost.variant</code>. Con el uso de una clase especial, <code>detail::event_caller</code>, que se verá más abajo, se consigue llamar a la clase original, a los métodos <code>process(Evento)</code>, para cada uno de los eventos recibidos.</p>

<pre>
    <span style=\"color: #6495ed; font-weight: bold;\">template</span> &lt;<span style=\"color: #6495ed; font-weight: bold;\">typename</span> <span style=\"color: #9290ff;\">Event</span>&gt;
    <span style=\"color: #9290ff;\">self</span>&amp; <span style=\"color: #6495ed; font-weight: bold;\">operator</span><span style=\"color: #87ceeb;\">&lt;&lt;</span>(<span style=\"color: #9290ff;\">Event</span>&amp; <span style=\"color: #98fb98;\">e</span>)
    {
        <span style=\"color: #9932cc; font-weight: bold;\">std</span>::cout &lt;&lt; <span style=\"color: #32cd32;\">&#8220;Received event&#8221;</span> &lt;&lt; <span style=\"color: #9932cc; font-weight: bold;\">std</span>::endl;
        {
            <span style=\"color: #9932cc; font-weight: bold;\">boost</span>::<span style=\"color: #9290ff;\">lock_guard</span>&lt;<span style=\"color: #9932cc; font-weight: bold;\">boost</span>::mutex&gt; <span style=\"color: #98fb98;\">lock</span> (list_mutex_);
            el_.push_back (e);
        }

        <span style=\"color: #66cdaa;\">// </span><span style=\"color: #66cdaa;\">signal that a new event is available

</span>        cond_.notify_one();

        <span style=\"color: #6495ed; font-weight: bold;\">return</span> *<span style=\"color: #6495ed; font-weight: bold;\">this</span>;
    }
</pre>
<p>El operador <code>&lt;&lt;</code> se puede usar para enviar un evento al actor. Esta es una construcción que queda muy natural. Enviar un mensaje es diferente a realizar una llamada, aunque también se puede pensar en un mecanismo de llamada a función modificado. Al final, el envío de mensajes, como se verá después, será algo así como <code>actor &lt;&lt; Clase::Evento(valores);</code>.</p>
<pre>

    <span style=\"color: #9290ff;\">void</span> <span style=\"color: #87ceeb;\">join</span>()
    {
        thread_.join();
    }

    <span style=\"color: #9290ff;\">void</span> <span style=\"color: #87ceeb;\">stop</span>()
    {
        stop_ = <span style=\"color: #9932cc; font-weight: bold;\">true</span>;
        cond_.notify_one();
    }

<span style=\"color: #6495ed; font-weight: bold;\">private</span>:
    <span style=\"color: #9290ff;\">Klass</span>&amp; <span style=\"color: #98fb98;\">delegate_</span>;

    <span style=\"color: #6495ed; font-weight: bold;\">typedef</span> <span style=\"color: #9932cc; font-weight: bold;\">std</span>::<span style=\"color: #9290ff;\">deque</span>&lt;<span style=\"color: #9290ff;\">VariantType</span>&gt;  <span style=\"color: #9290ff;\">event_list</span>;
    <span style=\"color: #9290ff;\">event_list</span> <span style=\"color: #98fb98;\">el_</span>;
    <span style=\"color: #9290ff;\">bool</span> <span style=\"color: #98fb98;\">stop_</span>; <span style=\"color: #66cdaa;\">// </span><span style=\"color: #66cdaa;\">stop?

</span>    <span style=\"color: #9932cc; font-weight: bold;\">boost</span>::<span style=\"color: #9290ff;\">thread</span> <span style=\"color: #98fb98;\">thread_</span>;

    <span style=\"color: #9932cc; font-weight: bold;\">boost</span>::<span style=\"color: #9290ff;\">mutex</span> <span style=\"color: #98fb98;\">mut_</span>;
    <span style=\"color: #9932cc; font-weight: bold;\">boost</span>::<span style=\"color: #9290ff;\">mutex</span> <span style=\"color: #98fb98;\">list_mutex_</span>;
    <span style=\"color: #9932cc; font-weight: bold;\">boost</span>::<span style=\"color: #9290ff;\">condition_variable</span> <span style=\"color: #98fb98;\">cond_</span>;
};

</pre>
<p>Por completitud, aquí está la clase <code>detail::event_caller</code>. Es necesaria para visitar un tipo <code>boost.variant</code> a través de la función <code>boost::apply_visitor</code>. Simplemente llama a la función <code>process()</code> correspondiente.</p>
<pre>
<span style=\"color: #6495ed; font-weight: bold;\">namespace</span> <span style=\"color: #9932cc; font-weight: bold;\">detail</span>

{

<span style=\"color: #6495ed; font-weight: bold;\">template</span> &lt;<span style=\"color: #6495ed; font-weight: bold;\">typename</span> <span style=\"color: #9290ff;\">Klass</span>&gt;
<span style=\"color: #6495ed; font-weight: bold;\">struct</span> <span style=\"color: #9290ff;\">event_caller</span> : <span style=\"color: #6495ed; font-weight: bold;\">public</span> <span style=\"color: #9932cc; font-weight: bold;\">boost</span>::<span style=\"color: #9290ff;\">static_visitor</span>&lt;&gt;

{
    <span style=\"color: #9290ff;\">Klass</span>&amp; <span style=\"color: #98fb98;\">instance_</span>;

    <span style=\"color: #87ceeb;\">event_caller</span> (<span style=\"color: #9290ff;\">Klass</span>&amp; <span style=\"color: #98fb98;\">i</span>)
        : instance_ (i)
    {
    }

    <span style=\"color: #6495ed; font-weight: bold;\">template</span> &lt;<span style=\"color: #6495ed; font-weight: bold;\">typename</span> <span style=\"color: #9290ff;\">T</span>&gt;

    <span style=\"color: #9290ff;\">void</span> <span style=\"color: #6495ed; font-weight: bold;\">operator</span><span style=\"color: #87ceeb;\">()</span>( <span style=\"color: #9290ff;\">T</span> <span style=\"color: #6495ed; font-weight: bold;\">const</span> &amp; <span style=\"color: #98fb98;\">operand</span> ) <span style=\"color: #6495ed; font-weight: bold;\">const</span>
    {
        instance_.process (operand);
    }
};
}

</pre>
<p>Llegamos a la clase sobre la que queremos construir el actor, llamada para este ejemplo <code>TestClass</code>. La clase define internamente un par de eventos (<code>Event1</code> y <code>Event2</code>), y, como comentamos arriba, el tipo <code>events_type</code>, como un <code>boost.variant</code> de los diferentes eventos que puede recibir. Se pueden ver los métodos <code>process()</code> más abajo. En este caso la clase tiene métodos propios para retornar un actor interno. Esto no tiene por qué ser así, y como se ha visto, los actores son independientes de las clases de las que actúan en representación.</p>

<pre>
<span style=\"color: #6495ed; font-weight: bold;\">class</span> <span style=\"color: #9290ff;\">TestClass</span>
{
<span style=\"color: #6495ed; font-weight: bold;\">public</span>:
    <span style=\"color: #6495ed; font-weight: bold;\">typedef</span> <span style=\"color: #9290ff;\">actor</span>&lt;<span style=\"color: #9290ff;\">TestClass</span>&gt; <span style=\"color: #9290ff;\">actor_type</span>;

    <span style=\"color: #6495ed; font-weight: bold;\">struct</span> <span style=\"color: #9290ff;\">Event1</span>

    {
        <span style=\"color: #9290ff;\">int</span> <span style=\"color: #98fb98;\">data</span>;
    };

    <span style=\"color: #6495ed; font-weight: bold;\">struct</span> <span style=\"color: #9290ff;\">Event2</span>
    {
        <span style=\"color: #9932cc; font-weight: bold;\">std</span>::<span style=\"color: #9290ff;\">string</span> <span style=\"color: #98fb98;\">ss</span>;
    };

    <span style=\"color: #66cdaa;\">// </span><span style=\"color: #66cdaa;\">Obligatory

</span>    <span style=\"color: #6495ed; font-weight: bold;\">typedef</span> <span style=\"color: #9932cc; font-weight: bold;\">boost</span>::<span style=\"color: #9290ff;\">variant</span>&lt; <span style=\"color: #9290ff;\">Event1</span>, <span style=\"color: #9290ff;\">Event2</span> &gt; <span style=\"color: #9290ff;\">events_type</span>;

    <span style=\"color: #9290ff;\">actor_type</span>&amp; <span style=\"color: #87ceeb;\">the_actor</span>()
    {
        <span style=\"color: #6495ed; font-weight: bold;\">return</span> *actor_;
    }

    <span style=\"color: #66cdaa;\">// </span><span style=\"color: #66cdaa;\">Ctor.

</span>    <span style=\"color: #87ceeb;\">TestClass</span>()
        : actor_ (<span style=\"color: #6495ed; font-weight: bold;\">new</span> <span style=\"color: #9290ff;\">actor_type</span> (*<span style=\"color: #6495ed; font-weight: bold;\">this</span>))
    {
    }

    ~<span style=\"color: #87ceeb;\">TestClass</span>()
    {
        actor_-&gt;stop();
        actor_-&gt;join();
        <span style=\"color: #6495ed; font-weight: bold;\">delete</span> actor_;
    }


<span style=\"color: #6495ed; font-weight: bold;\">private</span>:
    <span style=\"color: #9290ff;\">actor_type</span>* <span style=\"color: #98fb98;\">actor_</span>;

<span style=\"color: #6495ed; font-weight: bold;\">public</span>:
    <span style=\"color: #9290ff;\">void</span> <span style=\"color: #87ceeb;\">process</span> (Event1 <span style=\"color: #6495ed; font-weight: bold;\">const</span>&amp; <span style=\"color: #98fb98;\">e</span>)
    {
        <span style=\"color: #9932cc; font-weight: bold;\">std</span>::cout &lt;&lt; <span style=\"color: #32cd32;\">&#8220;Processed event: &#8220;</span>  &lt;&lt; e.data &lt;&lt; <span style=\"color: #9932cc; font-weight: bold;\">std</span>::endl;
    }

    <span style=\"color: #9290ff;\">void</span> <span style=\"color: #87ceeb;\">process</span> (Event2 <span style=\"color: #6495ed; font-weight: bold;\">const</span>&amp; <span style=\"color: #98fb98;\">e</span>)
    {
        <span style=\"color: #9932cc; font-weight: bold;\">std</span>::cout &lt;&lt; <span style=\"color: #32cd32;\">&#8220;Processed event 2: &#8220;</span>  &lt;&lt; e.ss &lt;&lt; <span style=\"color: #9932cc; font-weight: bold;\">std</span>::endl;
    }
};

</pre>
<p>Por último, ¿cómo se usa este mecanismo de actores? Lo ideal es proveer de mecanismos que sean semánticamente ricos y que sigan el principio de mínima sorpresa. Con las clases de arriba podemos escribir código sencillo como el siguiente:</p>
<pre>
    <span style=\"color: #9932cc; font-weight: bold;\">TestClass</span>::<span style=\"color: #9290ff;\">Event1</span> <span style=\"color: #98fb98;\">ev</span>;
    ev.data = -2;

    <span style=\"color: #9932cc; font-weight: bold;\">TestClass</span>::<span style=\"color: #9290ff;\">Event2</span> <span style=\"color: #98fb98;\">ev2</span>;
    ev2.ss = <span style=\"color: #32cd32;\">&#8220;abcdef.&#8221;</span>;

    <span style=\"color: #9290ff;\">TestClass</span> <span style=\"color: #98fb98;\">tc</span>;

    <span style=\"color: #9932cc; font-weight: bold;\">TestClass</span>::<span style=\"color: #9290ff;\">actor_type</span>&amp; <span style=\"color: #98fb98;\">ac</span> = tc.the_actor();</pre>

<p>Primero se crean un par de eventos de los dos tipos que puede recibir la clase <code>TestClass</code>, y se obtiene el actor <code>ac</code>. Se puede usar ese actor para enviar eventos a la clase:</p>
<pre>
    <span style=\"color: #66cdaa;\">// </span><span style=\"color: #66cdaa;\">Send the event2
</span>    ac &lt;&lt; ev2;

    <span style=\"color: #66cdaa;\">// </span><span style=\"color: #66cdaa;\">Send message
</span>    ac &lt;&lt; ev;
    <span style=\"color: #6495ed; font-weight: bold;\">for</span> (<span style=\"color: #9290ff;\">int</span> <span style=\"color: #98fb98;\">i</span> = 0; i &lt; 2000; ++i)
    {
        ev.data = i;
        ac &lt;&lt; ev;
        ac &lt;&lt; ev2;
    }

</pre>
<p>Aquí se envía primero un evento de tipo <code>Event1</code>, y luego otro del tipo 2. Después se entra en un bucle que envía ambos mensajes, modificando el primer evento con un dato distinto. El programa va mostrando la salida de eventos de la clase en orden:</p>
<pre>
...
Processed event: 1996
Processed event 2: abcdef.
Processed event: 1997
Processed event 2: abcdef.
Processed event: 1998
Processed event 2: abcdef.
Processed event: 1999
Processed event 2: abcdef.
</pre>
<p>Un último apunte. Las diferencias con los actores de otros lenguajes dinámicos (Scala, por ejemplo), son que en estos lenguajes se puede especificar un procesado basado en máquinas de estados, como por ejemplo, cuando se recibe el evento 1, después sólo se puede recibir el evento 2. Esta máquina de estados se puede implementar. Es una primera implementación de prueba.</p>
<p>No dudéis en contactar conmigo para ideas o comentarios.
</p>" "Desde hace tiempo quiero escribir esta entrada, pero por falta de
tiempo no he podido. El mecanismo de actores se utiliza en lenguajes
de programación como Erlang y Scala para sincronizar diferentes
«actores» que están funcionando en el sistema. Tradicionalmente, la
programación con hilos (salvo en casos como BSP, por ejemplo) se ha
realizado básicamente como la programación monoproceso, pero hac[...]" "Desde hace tiempo quiero escribir esta entrada, pero por falta de
tiempo no he podido. El mecanismo de actores se utiliza en lenguajes
de programación como Erlang y Scala para sincronizar diferentes
«actores» que están funcionando en el sistema. Tradicionalmente, la
programación con hilos (salvo en casos como BSP, por ejemplo) se ha
realizado básicamente como la programación monoproceso, pero haciendo
que el programador tuviera en la cabeza las posibles colisiones que
varios hilos ejecutando un código podrían tener. La otra cara
de esta moneda la han tenido lenguajes y paradigmas que cambiaban la
manera de programación hacia esquemas que hicieran más fácil escalar
en el número de hilos/cores a la vez que permitían una programación
más natural de programas multihilo. Estos nuevos paradigmas también
evitaban, por diseño, los problemas que se dan con los candados,
reentrancia, etc. El paradigma sobre el que hablaré hoy es el
de los actores. Este mecanismo, que data de 1986, se utiliza en Erlang
y en Scala,
por ejemplo, pero no he encontrado ejemplos de cómo implementar este
mecanismo en C++, salvo un artículo
de 1993 de Kafura, Mukherji y Lavender en el que no se hace uso de
ninguna característica «moderna» de C++, como los tipos parametrizados
o la sobrecarga de operadores.

En resumen, el mecanismo de actores se basa en definir un actor
como un objeto reactivo que se ejecuta en su propio hilo. Son
similares a los objetos stricto sensu, en el sentido de que
se les puede enviar invocaciones (en mi caso eventos), y los actores
responden ejecutándolos, como los objetos normales. No obstante, son
diferentes porque las invocaciones se ejecutan de manera que no causan
problemas de concurrencia. ¿Cómo? Pues asegurando que todas las
invocaciones sobre un actor se ejecutan en un mismo hilo. En este
sentido, un actor también aglutina, en general, un hilo de ejecución
propio en el que se ejecutan las llamadas al mismo (esto puede no ser
así exactamente, pero la idea es la misma). Existe una
diferencia con los paradigmas tradicionales de programación. Por
ejemplo, para no causar problemas de concurrencia, todos los métodos
de un objeto se podrían marcar como «synchronized» al
estilo de Java. Esto, efectivamente, hace que no haya problemas de
concurrencia (al menos los más usuales), ya que todas las invocaciones
a un objeto se realizan en exclusión mutua. Sin embargo, una
invocación a objeto normal lleva consigo asociada un hilo de
ejecución, y el hilo de ejecución del objeto llamante es el que
realiza la llamada al objeto llamado, con lo que también se tienen que
prevenir problemas como interbloqueos, esperas de candados, etc.
En resumen, sería casi como un sistema basado en eventos en donde
los objetos se envían mensajes que son a su vez procesados en los
hilos respectivos de cada actor. Ahora bien, ¿cómo implementar en C++
este mecanismo sin ser excesivamente intrusivo, teniendo en cuenta que
el mecanismo de envío de eventos no existe en C++? Pensé en utilizar
boost.signal, pero éste no asegura que el objeto receptor
va a ejecutar la señal en su propio hilo. Los requisitos que establecí
pues para el desarrollo fueron los siguientes:  El
mecanismo debe ser poco intrusivo, en el sentido de que las clases que
quieran beneficiarse de este mecanismo no tienen por qué escribirse
heredando de un interfaz en particular, sino que sólo tienen que
definir una serie de tipos para saber tratarlas como actor.  
Cualquier clase puede definir de manera sencilla qué eventos puede
recibir y cómo actuará ante cualquier evento, y estos serán los únicos
requisitos que tendrá que especificar la clase.

Las clases pueden modificar de forma sencilla qué eventos producen y reciben.
Las clases no tendrán que preocuparse de tratar con hilos, asincronía, almacenamiento y reproducción de eventos, etc.

El mecanismo de envío de eventos debe estar integrado en el lenguaje C++ de forma natural. Por ejemplo, con un operador que muestre que se está enviando un evento: objeto &lt;&lt;  mensaje;.

Con estos requisitos, pensé hacer la clase actor que pudiera aceptar como parámetro cualquier otra clase, y convertirla así en un actor. Este mecanismo es poco intrusivo, sólo obligando a que la clase que se quiere beneficiar de este mecanismo especifique qué eventos es capaz de recibir. La clase actor que me quedó fue la siguiente, con comentarios al estilo de la literate programming (si alguien está interesado le puedo pasar el código sin los comentarios):


template &lt;typename Klass&gt;
struct actor
{
    typedef typename Klass::events_type VariantType;


Uno de los requisitos que tiene que proveer la clase que se va a convertir en actor es ofrecer el tipo VariantType con los distintos eventos que va a poder recibir. Para esto se usará el tipo boost.variant como se verá después.

    typedef actor&lt;Klass&gt; self;

    actor (Klass&amp; a)
        : delegate_ (a)
    {
        thread_ = boost::thread (boost::ref (*this));
    }


Cada actor posee su propio hilo. Esto, por supuesto puede modificarse después. Sólo quería hacer una prueba de concepto. En scala existen schedulers que enlazan actores con hilos.

    // Thread func.
    void operator()()
    {
        std::cout &lt;&lt; &#8220;running thread&#8221; &lt;&lt; std::endl;

        while(!stop_)
        {
            bool b;
            {
                boost::lock_guard&lt;boost::mutex&gt; guard (list_mutex_);
                b = el_.empty();
            }

            if (b)
            {
                boost::unique_lock&lt;boost::mutex&gt; lock (mut_);

                // wait on the cond. var.

                cond_.wait (lock);
            }

            while (true)
            {
                VariantType vtv;
                {
                    boost::lock_guard&lt;boost::mutex&gt; guard (list_mutex_);
                    if (el_.empty())
                        break;

                    vtv = el_.front();
                    el_.pop_front();
                }

                // Call the delegate without holding the mutex locked

                boost::apply_visitor (detail::event_caller&lt;Klass&gt; (delegate_),
                                      vtv);
            }
        }
    }

El operator()() de la clase actor ejecuta el código del hilo. He utilizado variables de condición porque me parecen más ricas semánticamente. El hilo básicamente extrae eventos de la cola de eventos y los ejecuta sobre el delegate. Como los eventos de la cola pueden ser de diferentes tipos (nótese que este punto es especialmente difícil en C++), hay que utilizar estructuras que permitan tratar diferentes tipos de eventos de forma genérica. Para eso he usado la construcción boost::apply_visitor de boost.variant. Con el uso de una clase especial, detail::event_caller, que se verá más abajo, se consigue llamar a la clase original, a los métodos process(Evento), para cada uno de los eventos recibidos.


    template &lt;typename Event&gt;
    self&amp; operator&lt;&lt;(Event&amp; e)
    {
        std::cout &lt;&lt; &#8220;Received event&#8221; &lt;&lt; std::endl;
        {
            boost::lock_guard&lt;boost::mutex&gt; lock (list_mutex_);
            el_.push_back (e);
        }

        // signal that a new event is available

        cond_.notify_one();

        return *this;
    }

El operador &lt;&lt; se puede usar para enviar un evento al actor. Esta es una construcción que queda muy natural. Enviar un mensaje es diferente a realizar una llamada, aunque también se puede pensar en un mecanismo de llamada a función modificado. Al final, el envío de mensajes, como se verá después, será algo así como actor &lt;&lt; Clase::Evento(valores);.


    void join()
    {
        thread_.join();
    }

    void stop()
    {
        stop_ = true;
        cond_.notify_one();
    }

private:
    Klass&amp; delegate_;

    typedef std::deque&lt;VariantType&gt;  event_list;
    event_list el_;
    bool stop_; // stop?

    boost::thread thread_;

    boost::mutex mut_;
    boost::mutex list_mutex_;
    boost::condition_variable cond_;
};


Por completitud, aquí está la clase detail::event_caller. Es necesaria para visitar un tipo boost.variant a través de la función boost::apply_visitor. Simplemente llama a la función process() correspondiente.

namespace detail

{

template &lt;typename Klass&gt;
struct event_caller : public boost::static_visitor&lt;&gt;

{
    Klass&amp; instance_;

    event_caller (Klass&amp; i)
        : instance_ (i)
    {
    }

    template &lt;typename T&gt;

    void operator()( T const &amp; operand ) const
    {
        instance_.process (operand);
    }
};
}


Llegamos a la clase sobre la que queremos construir el actor, llamada para este ejemplo TestClass. La clase define internamente un par de eventos (Event1 y Event2), y, como comentamos arriba, el tipo events_type, como un boost.variant de los diferentes eventos que puede recibir. Se pueden ver los métodos process() más abajo. En este caso la clase tiene métodos propios para retornar un actor interno. Esto no tiene por qué ser así, y como se ha visto, los actores son independientes de las clases de las que actúan en representación.


class TestClass
{
public:
    typedef actor&lt;TestClass&gt; actor_type;

    struct Event1

    {
        int data;
    };

    struct Event2
    {
        std::string ss;
    };

    // Obligatory

    typedef boost::variant&lt; Event1, Event2 &gt; events_type;

    actor_type&amp; the_actor()
    {
        return *actor_;
    }

    // Ctor.

    TestClass()
        : actor_ (new actor_type (*this))
    {
    }

    ~TestClass()
    {
        actor_-&gt;stop();
        actor_-&gt;join();
        delete actor_;
    }


private:
    actor_type* actor_;

public:
    void process (Event1 const&amp; e)
    {
        std::cout &lt;&lt; &#8220;Processed event: &#8220;  &lt;&lt; e.data &lt;&lt; std::endl;
    }

    void process (Event2 const&amp; e)
    {
        std::cout &lt;&lt; &#8220;Processed event 2: &#8220;  &lt;&lt; e.ss &lt;&lt; std::endl;
    }
};


Por último, ¿cómo se usa este mecanismo de actores? Lo ideal es proveer de mecanismos que sean semánticamente ricos y que sigan el principio de mínima sorpresa. Con las clases de arriba podemos escribir código sencillo como el siguiente:

    TestClass::Event1 ev;
    ev.data = -2;

    TestClass::Event2 ev2;
    ev2.ss = &#8220;abcdef.&#8221;;

    TestClass tc;

    TestClass::actor_type&amp; ac = tc.the_actor();

Primero se crean un par de eventos de los dos tipos que puede recibir la clase TestClass, y se obtiene el actor ac. Se puede usar ese actor para enviar eventos a la clase:

    // Send the event2
    ac &lt;&lt; ev2;

    // Send message
    ac &lt;&lt; ev;
    for (int i = 0; i &lt; 2000; ++i)
    {
        ev.data = i;
        ac &lt;&lt; ev;
        ac &lt;&lt; ev2;
    }


Aquí se envía primero un evento de tipo Event1, y luego otro del tipo 2. Después se entra en un bucle que envía ambos mensajes, modificando el primer evento con un dato distinto. El programa va mostrando la salida de eventos de la clase en orden:

...
Processed event: 1996
Processed event 2: abcdef.
Processed event: 1997
Processed event 2: abcdef.
Processed event: 1998
Processed event 2: abcdef.
Processed event: 1999
Processed event 2: abcdef.

Un último apunte. Las diferencias con los actores de otros lenguajes dinámicos (Scala, por ejemplo), son que en estos lenguajes se puede especificar un procesado basado en máquinas de estados, como por ejemplo, cuando se recibe el evento 1, después sólo se puede recibir el evento 2. Esta máquina de estados se puede implementar. Es una primera implementación de prueba.
No dudéis en contactar conmigo para ideas o comentarios.
" (c++ programming spanish español) "primera-aproximacion-de-un-mecanismo-de-actores-para-c" string 9 2 2011 0 0 ((:hours . 0) (:minutes . 0) (:day . 9) (:month . 2) (:year . 2011))] [cl-struct-fmb-post "martina" "<div><br/>       <a href=\"http://www.flickr.com/photos/dsevilla/5567060979/\" title=\"photo sharing\"><img src=\"http://farm6.static.flickr.com/5174/5567060979_316df9de9d.jpg\" alt=\"\" /></a><br/><br /><br/>        <a href=\"http://www.flickr.com/photos/dsevilla/5567060979/\">martina</a>, originally uploaded by <a href=\"http://www.flickr.com/photos/dsevilla/\">dsevilla</a>.<br/></div><br/>                              <br/><p><br/>   Vino corriendo hacia mí y salió esta foto :)<br /><br/><br /><br/>She came running to me and I shot this! :)<br/></p>" "martina, originally uploaded by dsevilla.                                 Vino corriendo hacia mí y salió esta foto :)She came running to me and I shot this! :)" "               martina, originally uploaded by dsevilla.                                 Vino corriendo hacia mí y salió esta foto :)She came running to me and I shot this! :)" (general) "martina-post-2011-3-28" string 28 3 2011 10 38 ((:hours . 10) (:minutes . 38) (:day . 28) (:month . 3) (:year . 2011))] [cl-struct-fmb-post "Boats &amp; child" "<div><a href=\"http://www.flickr.com/photos/dsevilla/5542444491/\" title=\"photo sharing\"><img src=\"http://farm6.static.flickr.com/5138/5542444491_33bfdba597.jpg\" alt=\"\" /></a><br /><br/><a href=\"http://www.flickr.com/photos/dsevilla/5542444491/\">Boats &amp; child</a>, originally uploaded by <a href=\"http://www.flickr.com/people/dsevilla/\">dsevilla</a>.</div>" "Boats &amp; child, originally uploaded by dsevilla." "Boats &amp; child, originally uploaded by dsevilla." (general) "boats-amp-child" string 21 3 2011 0 15 ((:hours . 0) (:minutes . 15) (:day . 21) (:month . 3) (:year . 2011))] [cl-struct-fmb-post "Hispania F1 Racing Team" "
<p>Esta semana (el martes, creo recordar) hubo una charla
de este grupo de fórmula uno con capital español (murciano, para más
señas). Quizá es que esperaba más de esto, mucha tecnología al límite,
ingeniería de desarrollo, pruebas, ciclos cortos de desarrollo, etc.,
pero me desilusionó un poco la charla.</p>
<p>Explicaré por qué. No
pude ir al principio de la charla porque estaba dando clase en el
máster de la asignatura «Software como servicio y distribuido» hasta
las 5 de la tarde, y la conferencia había empezado a las 4. Con todo,
cuando llegué estaban en turno de preguntas, y pude hacerme una idea
de lo que había sido la presentación, aunque me habría gustado verla
desde el principio.</p>
<p>Parece que no fue excesivamente técnica,
al menos en la parte que nos interesa a los informáticos, porque una
de las preguntas que se hicieron tuvo que ver con el lenguaje de
programación o entorno que utilizaban. La respuesta del ingeniero
informático:</p>
<blockquote><em>- Utilizamos C#. Cuando entré a trabajar en
la empresa venía de experiencia de programación en C++. Cuando me
explicaron lo que tenía que hacer me eché las manos a la cabeza. Eso
no se podía hacer con C++. Aprendí en un par de semanas C# e hicimos
el programa.</em></blockquote>

<p>Como se puede suponer, tengo miles de
comentarios a este respecto. Primero, sí que pude ver el interfaz
gráfico que habían hecho. Interfaces con esa complejidad estamos
acostumbrados a hacer en C++ y Qt para SAES en la Cátedra de Software
libre, y no nos echamos las manos a la cabeza. El hecho de que un
ingeniero en particular no tenga el conocimiento suficiente, o tenga
que tomar una decisión acelerada no sé si debería decidir una
estrategia para el futuro. Además, aprender en un par de semanas C# no
parece lo más adecuado para hacer un programa de calidad, pero en
fin. Continuaba:</p>
<blockquote><em>- La salida de este programa son
ficheros XML que utilizamos para comunicar con los equipos de
carrera</em></blockquote>

<p>Esto es mi favorito. Al nombrar XML parece que
todo el mundo dice «ah, claro». XML ya hace que los programas
interactúen mágicamente... En fin. ¿Por qué no JSON/YAML? Reconozco
que esto es más una manía mía, pero ¿por qué en los nuevos desarrollos
de bases de datos (CouchDB, MongoDB) no se utiliza XML sino formatos
más sencillos y expresivos?</p>
<p>Me hubiera gustado preguntarles
por sus ciclos de desarrollo, pruebas, etc., pero como había llegado
tarde, ahí se quedó.</p>
<p>La conversación, a raíz de otra
pregunta, giró hacia la colaboración de estos grupos con la
Universidad. Uno de los ponentes (no recuerdo su nombre) había estado
trabajando para Red Bull anteriormente, y contaba proyectos de
colaboración que sus antiguos patronos tenían con Universidades. No es
el caso de Hispania, según decía, por problemas políticos, o por
problemas de medios de las universidades (laboratorios con material
especializado, etc.)</p>
<p>En este punto hice una pregunta, dado
que tenemos experiencia en colaborar con una empresa, pregunté que
para tener una colaboración a nivel de informática no se necesitaban
laboratorios especializados (sólo ordenadores y personas). Uno de los
ingenieros del equipo (presumo) me interrumpió gritando que «¿Cómo que
no necesitas? Para empezar necesitas un superordenador». Intenté
responderle a medio hacer la pregunta que no se necesita un
supercomputador <em>in situ</em> sino una persona que sepa cómo hacer
los programas paralelos que aprovechen en superordenador, y una
conexión internet para conectarse al CESGA o al Mare Nostrum (en los
tiempos de Internet, los ordenadores no tienen que estar en tu
habitación, aparte de que tenemos Ben Arabí, creo recordar de la
última vez que estuve allí... Además, ¡¡programan en C#!!, ¿qué
supercomputador???)... Cuando me dejó terminar la pregunta, la
respuesta del ponente era la misma, cuestiones políticas que escapaban
a su nivel de puesto de trabajo que hacía que no se colaborara con la
Universidad tampoco en informática. Creo que nuestra experiencia en
testing, modelado, etc., sería interesante para ellos, pero aquí
estamos.</p>
<p>Finalmente, fallo garrafal (según mi punto de
vista). Se quejaban de que tenían un presupuesto limitado, y utilizan
software propietario, licencias, etc., en vez de sacar partido al
software libre (incluso para C# existe Mono...). </p>
<p>Espero que
los ingenieros en otras ramas estén más al día, porque si no, el
equipo va a ganar pocas carreras :)</p>" "
Esta semana (el martes, creo recordar) hubo una charla
de este grupo de fórmula uno con capital español (murciano, para más
señas). Quizá es que esperaba más de esto, mucha tecnología al límite,
ingeniería de desarrollo, pruebas, ciclos cortos de desarrollo, etc.,
pero me desilusionó un poco la charla.
Explicaré por qué. No
pude ir al principio de la charla porque estaba dando clase en el
máster[...]" "
Esta semana (el martes, creo recordar) hubo una charla
de este grupo de fórmula uno con capital español (murciano, para más
señas). Quizá es que esperaba más de esto, mucha tecnología al límite,
ingeniería de desarrollo, pruebas, ciclos cortos de desarrollo, etc.,
pero me desilusionó un poco la charla.
Explicaré por qué. No
pude ir al principio de la charla porque estaba dando clase en el
máster de la asignatura «Software como servicio y distribuido» hasta
las 5 de la tarde, y la conferencia había empezado a las 4. Con todo,
cuando llegué estaban en turno de preguntas, y pude hacerme una idea
de lo que había sido la presentación, aunque me habría gustado verla
desde el principio.
Parece que no fue excesivamente técnica,
al menos en la parte que nos interesa a los informáticos, porque una
de las preguntas que se hicieron tuvo que ver con el lenguaje de
programación o entorno que utilizaban. La respuesta del ingeniero
informático:
- Utilizamos C#. Cuando entré a trabajar en
la empresa venía de experiencia de programación en C++. Cuando me
explicaron lo que tenía que hacer me eché las manos a la cabeza. Eso
no se podía hacer con C++. Aprendí en un par de semanas C# e hicimos
el programa.

Como se puede suponer, tengo miles de
comentarios a este respecto. Primero, sí que pude ver el interfaz
gráfico que habían hecho. Interfaces con esa complejidad estamos
acostumbrados a hacer en C++ y Qt para SAES en la Cátedra de Software
libre, y no nos echamos las manos a la cabeza. El hecho de que un
ingeniero en particular no tenga el conocimiento suficiente, o tenga
que tomar una decisión acelerada no sé si debería decidir una
estrategia para el futuro. Además, aprender en un par de semanas C# no
parece lo más adecuado para hacer un programa de calidad, pero en
fin. Continuaba:
- La salida de este programa son
ficheros XML que utilizamos para comunicar con los equipos de
carrera

Esto es mi favorito. Al nombrar XML parece que
todo el mundo dice «ah, claro». XML ya hace que los programas
interactúen mágicamente... En fin. ¿Por qué no JSON/YAML? Reconozco
que esto es más una manía mía, pero ¿por qué en los nuevos desarrollos
de bases de datos (CouchDB, MongoDB) no se utiliza XML sino formatos
más sencillos y expresivos?
Me hubiera gustado preguntarles
por sus ciclos de desarrollo, pruebas, etc., pero como había llegado
tarde, ahí se quedó.
La conversación, a raíz de otra
pregunta, giró hacia la colaboración de estos grupos con la
Universidad. Uno de los ponentes (no recuerdo su nombre) había estado
trabajando para Red Bull anteriormente, y contaba proyectos de
colaboración que sus antiguos patronos tenían con Universidades. No es
el caso de Hispania, según decía, por problemas políticos, o por
problemas de medios de las universidades (laboratorios con material
especializado, etc.)
En este punto hice una pregunta, dado
que tenemos experiencia en colaborar con una empresa, pregunté que
para tener una colaboración a nivel de informática no se necesitaban
laboratorios especializados (sólo ordenadores y personas). Uno de los
ingenieros del equipo (presumo) me interrumpió gritando que «¿Cómo que
no necesitas? Para empezar necesitas un superordenador». Intenté
responderle a medio hacer la pregunta que no se necesita un
supercomputador in situ sino una persona que sepa cómo hacer
los programas paralelos que aprovechen en superordenador, y una
conexión internet para conectarse al CESGA o al Mare Nostrum (en los
tiempos de Internet, los ordenadores no tienen que estar en tu
habitación, aparte de que tenemos Ben Arabí, creo recordar de la
última vez que estuve allí... Además, ¡¡programan en C#!!, ¿qué
supercomputador???)... Cuando me dejó terminar la pregunta, la
respuesta del ponente era la misma, cuestiones políticas que escapaban
a su nivel de puesto de trabajo que hacía que no se colaborara con la
Universidad tampoco en informática. Creo que nuestra experiencia en
testing, modelado, etc., sería interesante para ellos, pero aquí
estamos.
Finalmente, fallo garrafal (según mi punto de
vista). Se quejaban de que tenían un presupuesto limitado, y utilizan
software propietario, licencias, etc., en vez de sacar partido al
software libre (incluso para C# existe Mono...). 
Espero que
los ingenieros en otras ramas estén más al día, porque si no, el
Universidad de Murcia</a>" "<a href=\"http://code.google.com/p/emf4cpp/\" rel=\"interesting link\">EMF4CPP</a>") nil nil nil #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data ()) #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data ()) #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data ())])
(provide 'fmb-static-blog)