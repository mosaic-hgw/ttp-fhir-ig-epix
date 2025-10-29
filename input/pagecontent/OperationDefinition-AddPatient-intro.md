**Unterstützt ab TTP-FHIR Gateway Version 2.2.0**

#### Zweck
Anlegen und Matching (**Record Linkage**) von übermittelten Patienten-Resourcen auf Basis der personenidentifizierenden Informationen (IDAT) im [E-PIX](https://www.ths-greifswald.de/e-pix).

Dabei werden eine oder mehrere Patientenidentitäten im E-PIX erzeugt. Nach Abschluss des Record Linkage Prozesses werden für jede übermittelte Patienten-Resource der **Master Person Index (MPI ID)**, die MPI-Zuordnung (Person-Ressource) sowie der Match-Status und vorhandene Identitäten zurückgegeben.

#### Voraussetzung
Die angegebenen Parameter zur Spezifikation der Matching-Domäne und der Datenquelle müssen im E-PIX konfiguriert sein.
