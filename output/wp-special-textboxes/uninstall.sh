#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stb_version'
wp option delete 'stb_pointers'
wp option delete 'stb_db_version'
wp option delete 'SpecialTextBoxesAdminSettings'
wp option delete 'SpecialTextBoxesAdminOptions'

