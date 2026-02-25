#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pdb_install_pages_created'
wp option delete 'pdb_mode'
wp option delete 'pdb_email'
wp option delete 'pdb_amount'
wp option delete 'pdb_currency'
wp option delete 'pdb_size'
wp option delete 'pdb_purpose'
wp option delete 'pdb_SuggestionAmount'

