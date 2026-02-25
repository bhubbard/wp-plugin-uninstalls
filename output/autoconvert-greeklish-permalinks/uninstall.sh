#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'agp_automatic'
wp option delete 'agp_diphthongs'
wp option delete 'agp_automatic_post'
wp option delete 'agp_automatic_tax'
wp option delete 'agp_conversion'
wp option delete 'agp_version'
wp option delete 'auto_gr_permalinks_automatic'
wp option delete 'auto_gr_permalinks_diphthongs'
wp option delete 'auto_gr_permalinks_dipthongs'

# Delete Transients
wp transient delete 'agp_notice_dismiss'

