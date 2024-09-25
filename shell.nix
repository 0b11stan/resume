{pkgs ? import <nixpkgs> {}}: let
  tex = pkgs.texlive.combine {
    inherit
      (pkgs.texlive)
      xmpincl
      accsupp
      enumitem
      dashrule
      paracol
      roboto
      lato
      biblatex
      pdfx
      fontawesome5
      fontaxes
      apa6
      #babel-german
      
      adjustbox
      background
      bidi
      collectbox
      csquotes
      everypage
      filehook
      footmisc
      footnotebackref
      framed
      biber
      fvextra
      letltxmacro
      ly1
      mdframed
      mweights
      needspace
      pagecolor
      scheme-tetex
      sectsty
      sourcecodepro
      sourcesanspro
      tcolorbox
      titling
      ucharcat
      ulem
      unicode-math
      upquote
      xecjk
      xurl
      zref
      ;
  };
in
  pkgs.mkShell {
    buildInputs = with pkgs; [tex];
  }
