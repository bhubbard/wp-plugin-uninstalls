#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rpbchessboard_%'"
wp option delete 'rpbchessboard_diagramAlignment'
wp option delete 'rpbchessboard_navigationBoard'
wp option delete 'rpbchessboard_moveArrowColor'
wp option delete 'rpbchessboard_pieceSymbols'
wp option delete 'rpbchessboard_smallScreenModes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%s'"
wp option delete 'rpbchessboard_fenCompatibilityMode'
wp option delete 'rpbchessboard_pgnCompatibilityMode'
wp option delete 'rpbchessboard_lazyLoadingForCSSAndJS'
wp option delete 'rpbchessboard_custom_colorsets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rpbchessboard_custom_colorset_label_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rpbchessboard_custom_colorset_attributes_%'"
wp option delete 'rpbchessboard_custom_piecesets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rpbchessboard_custom_pieceset_label_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rpbchessboard_custom_pieceset_attributes_%'"
wp option delete 'rpbchessboard_squareSize'
wp option delete 'rpbchessboard_showCoordinates'
wp option delete 'rpbchessboard_colorset'
wp option delete 'rpbchessboard_pieceset'
wp option delete 'rpbchessboard_showPlayButton'
wp option delete 'rpbchessboard_showFlipButton'
wp option delete 'rpbchessboard_showDownloadButton'
wp option delete 'rpbchessboard_animated'
wp option delete 'rpbchessboard_animationSpeed'
wp option delete 'rpbchessboard_showMoveArrow'
wp option delete 'rpbchessboard_playSound'
wp option delete 'rpbchessboard_smallScreenCompatibility'

