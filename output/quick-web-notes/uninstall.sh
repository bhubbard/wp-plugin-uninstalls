#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'quick_web_notes_position_css'
wp transient delete 'quick_web_notes_message'
wp transient delete 'quick_web_notes_bulk_delete_result'

