#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cbxwpbookmark_version'
wp option delete 'cbxwpbookmark_basics'
wp option delete 'cbxwpbookmark_customizer'

# Delete Transients
wp transient delete 'cbxwpbookmark_cat_addedit_error'
wp transient delete 'cbxwpbookmark_upgraded_notice'
wp transient delete 'cbxwpbookmark_activated_notice'
wp transient delete 'cbxwpbookmark_proaddon_deactivated'
wp transient delete 'cbxwpbookmark_mycredaddon_deactivated'

