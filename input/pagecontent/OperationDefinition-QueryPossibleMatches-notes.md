## Voraussetzung
Der angegebene Parameter zur Spezifikation der Matching-Domäne muss im E-PIX konfiguriert sein.
Wenn der Parameter `mpiIdentifier` angeben wird, muss ebenfalls zwingend Parameter `domain` angegeben werden.

## Aufruf und Rückgabe
Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/epix/$queryPossibleMatches`

Paging mittels `_count` und `_offset` sowie Bundle-Navigation-Links werden in der aktuellen Version noch nicht unterstützt.

Der Funktionsaufruf liefert ein SearchSet-Bundle zurück. Das Bundle-Total gibt die Gesamtanzahl der offenen Possible-Matches im E-PIX zurück.
Possible Matches werden als Ressourcen vom Typ [Match Parameters Profile](StructureDefinition-match-parameters-profile.html) zurückgegeben. 

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 404: Parameter mit unbekanntem Inhalt.
* 422: Fehlende oder falsche Patienten-Attribute.

## Beispiel

* [Request-Body](Parameters-Parameters-QueryPossibleMatches-request-example-1.html)
* [Rückmeldung](Bundle-Bundle-QueryPossibleMatches-response-example-1.html)
