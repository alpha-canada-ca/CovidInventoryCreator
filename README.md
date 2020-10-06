# CovidInventoryCreator
Creates the HTML/JS app that is deployed to https://covid-19inventory.tbs.alpha.canada.ca

# Steps for adding new tags/keywords that will flag pages as covid related

- Contact GC Search and ask them to add the new keyword.
- Update the MATCH_KEYWORDS variable in Main.java to include the new keywords
- Deploy the changes by committing and pushing to GitHub (workflow will deploy new CronJob)
- Update covid19-crawler.xml from the Search-Testbed-Indexer project with the new keyword
    - The below is an example PCUE would be where the new keyword is placed
    <url>https://www.canada.ca/${lang}/sr/srb/sra.html?_charset_=UTF-8&amp;allq=PCUE&amp;exctq=&amp;anyq=&amp;noneq=&amp;fqupdate=dateModified_dt%3A[NOW-1YEAR+TO+NOW]&amp;dmn=&amp;fqocct=#wb-land</url>
    - Also update the URL for basic search for example: <url>https://www.canada.ca/${lang}/sr/srb.html?_charset_=UTF-8&amp;q=covid</url> replace covid with the new keyword the query syntax
- Deploy the new indexer configuration by doing a commit and push



		
