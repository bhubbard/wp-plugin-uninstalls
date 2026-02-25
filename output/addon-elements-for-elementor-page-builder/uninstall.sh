#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wts_eae_elements'
wp option delete 'eae_review'
wp option delete 'elementor_controls_usage'
wp option delete 'fv_downloaded'
wp option delete 'wts_eae_gmap_key'
wp option delete 'wts_eae_youtube_api_key'
wp option delete 'use_tsParticle'

# Delete Transients
wp transient delete 'eae_remind_later'
wp transient delete 'fv_download_later'

