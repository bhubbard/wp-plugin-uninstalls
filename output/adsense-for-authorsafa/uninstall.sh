#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'afa_option_name'
wp option delete 'afa_option_name[adposition]'
wp option delete 'afa_option_name[adpub_id]'

