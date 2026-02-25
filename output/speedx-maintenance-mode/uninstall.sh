#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spx1mm_reca_site_key'
wp option delete 'spx1mm_enabled'
wp option delete 'spx1mm_reca_secret_key'
wp option delete 'spx1mm_reca_score'
wp option delete 'spx1mm_enabled_password'
wp option delete 'spx1mm_password'
wp option delete 'spx1mm_title'
wp option delete 'spx1mm_content'
wp option delete 'spx1mm_styles'
wp option delete 'spx1mm_head'
wp option delete 'spx1mm_after_body'
wp option delete 'spx1mm_before_html'

