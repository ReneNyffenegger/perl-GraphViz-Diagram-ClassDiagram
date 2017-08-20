#!/usr/bin/perl
#
#   http://renenyffenegger.ch/development/Perl/modules/GraphViz/Diagram/ClassDiagram/GraphViz-Diagram-ClassDiagram.pdf
#
use warnings;
use strict;

use GraphViz::Diagram::ClassDiagram;

my $diag = GraphViz::Diagram::ClassDiagram->new('GraphViz-Diagram-ClassDiagram.png');
$diag -> title("GraphViz::Diagram::ClassDiagram classes");

my $prefix_grph = "Graphviz::Graph";
my $prefix_diag  = "Graphviz::Diagram::ClassDiagram";

my $Graph         = $diag->class("${prefix_grph}");

my $Node          = $diag->class("${prefix_grph}::Node");



my $ClassDiagram = $diag->class("${prefix_diag}");

my $Node_        = $diag->class("${prefix_diag}::Node_");
   $Node_->inherits_from($Node);

my $Class        = $diag->class("${prefix_diag}::Class");
   $Class->inherits_from($Node_);

my $GlobalVar    = $diag->class("${prefix_diag}::GlobalVar");
   $GlobalVar->inherits_from($Node_);

my $ClassElement = $diag->class("${prefix_diag}::ClassElement");

my $Attribute    = $diag->class("${prefix_diag}::Attribute");
   $Attribute->inherits_from($ClassElement);

my $Method       = $diag->class("${prefix_diag}::Method");
   $Method->inherits_from($ClassElement);

$diag->create;
