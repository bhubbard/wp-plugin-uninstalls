#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'beerxml_shortcode_cache'
wp option delete 'beerxml_shortcode_units'
wp option delete 'beerxml_shortcode_download'
wp option delete 'beerxml_shortcode_style'
wp option delete 'beerxml_shortcode_mash'
wp option delete 'beerxml_shortcode_misc'
wp option delete 'beerxml_shortcode_actuals'
wp option delete 'beerxml_shortcode_fermentation'
wp option delete 'beerxml_shortcode_mhop'

