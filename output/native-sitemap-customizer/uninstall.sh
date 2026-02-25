#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ayudawp_nsm_dismissed_notices'
wp option delete 'wpseo_taxonomy_meta'
wp option delete 'aioseo_options'
wp option delete 'ayudawp_nsm_settings'

# Delete Transients
wp transient delete 'ayudawp_nsm_reset_success'
wp transient delete 'ayudawp_nsm_seo_plugin_dismissed'
wp transient delete 'ayudawp_nsm_promo_dismissed'
wp transient delete 'ayudawp_nsm_noindex_notice'
wp transient delete 'ayudawp_nsm_seo_plugin_notice'
wp transient delete 'ayudawp_nsm_promo_notice'

