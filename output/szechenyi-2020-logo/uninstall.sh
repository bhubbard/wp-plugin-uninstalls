#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'szechenyi_2020_options'

# Delete Transients
wp transient delete 'szechenyi_2020_619_review_notice'
wp transient delete 'misi_szechenyi2020_css_transient'
wp transient delete 'misi_szechenyi2020_html_transient'

