updating
updateRoot: anHtmlRoot

  super updateRoot: anHtmlRoot.
  anHtmlRoot beHtml5.
  anHtmlRoot meta
        name: 'viewport';
        content: 'width=device-width, initial-scale=1.0'