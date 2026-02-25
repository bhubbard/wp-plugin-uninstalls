#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'ely_hide_notices'
wp transient delete 'ely_hide_review_notice'

