#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'word_replacer_ver'

# Delete Transients
wp transient delete 'word_replacer_db'

