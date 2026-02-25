#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gcstb_delete_db'
wp option delete 'gcstb_delete_db_confirm'
wp option delete 'gcstb_answer_type'

