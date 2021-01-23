# webstore
Dies ist eine kleine Webstore Anwendung um verschiedne Möglichkeiten des Java Spring MVC Frameworks zu zeigen

Der Benutzer kann hier verschiedne Produkte in eine Warenkorn legen und dann per Checkout siene Bestellung bestätigen.
Er erhält eine Bestätigung mit den entsprechenden daten.

Bei der Umsetzung habe ich folgende Technologien vewendet
Java Spring Framework MVC
JSTL Tag Libraries
JSP Pages
View Resolver
Interceptors
Internationalisierung mit LocaleChangeInterceptor
Spring Security user authentication (Der Benutzer root password admin123 hat die nötigen Rechte um Produkte anzusehen, hinzuzufügen und Bestellungen auszulösen
Beim Hinzufügen eines  Produktes wird Spring Validation verwendet.
Das Hinzufügen eines Produkts zum ShoppingCart erfolgt mit RESTful Services
http://localhost:8080/webstore/rest/cart erzeugt ein neues Cart Object. Ebebso sind die weiteren CRUD Methoden über entsprechende REST Aufgrufe per Requet-Mapping.
Der Checkout-Workflow ist mit Web Flow realisiert
Die Darstellung der Seiten wurde per Apache Tiles vereinheitlicht.
Die Daten werden über eine inMemory -DB verwaltet. Die Zugriffe erfolgen per JDBC.


