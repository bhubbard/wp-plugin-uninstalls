#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sccs_coming_soon_enabled'
wp option delete 'sccs_coming_soon_message'
wp option delete 'sccsmm_enable'
wp option delete 'sccsmm_timer_end'
wp option delete 'sccsmm_timer_redirect'
wp option delete 'sccsmm_template'
wp option delete 'sccsmm_title'
wp option delete 'sccsmm_message'
wp option delete 'sccsmm_seo_title'
wp option delete 'sccsmm_seo_description'
wp option delete 'sccsmm_custom_css'
wp option delete 'sccsmm_logo_url'

