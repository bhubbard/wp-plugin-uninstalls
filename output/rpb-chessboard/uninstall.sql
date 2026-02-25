-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rpbchessboard_diagramAlignment', 'rpbchessboard_navigationBoard', 'rpbchessboard_moveArrowColor', 'rpbchessboard_pieceSymbols', 'rpbchessboard_smallScreenModes', 'rpbchessboard_fenCompatibilityMode', 'rpbchessboard_pgnCompatibilityMode', 'rpbchessboard_lazyLoadingForCSSAndJS', 'rpbchessboard_custom_colorsets', 'rpbchessboard_custom_piecesets', 'rpbchessboard_squareSize', 'rpbchessboard_showCoordinates', 'rpbchessboard_colorset', 'rpbchessboard_pieceset', 'rpbchessboard_showPlayButton', 'rpbchessboard_showFlipButton', 'rpbchessboard_showDownloadButton', 'rpbchessboard_animated', 'rpbchessboard_animationSpeed', 'rpbchessboard_showMoveArrow', 'rpbchessboard_playSound', 'rpbchessboard_smallScreenCompatibility');
DELETE FROM wp_options WHERE option_name LIKE 'rpbchessboard_%';
DELETE FROM wp_options WHERE option_name LIKE '%s';
DELETE FROM wp_options WHERE option_name LIKE 'rpbchessboard_custom_colorset_label_%';
DELETE FROM wp_options WHERE option_name LIKE 'rpbchessboard_custom_colorset_attributes_%';
DELETE FROM wp_options WHERE option_name LIKE 'rpbchessboard_custom_pieceset_label_%';
DELETE FROM wp_options WHERE option_name LIKE 'rpbchessboard_custom_pieceset_attributes_%';

