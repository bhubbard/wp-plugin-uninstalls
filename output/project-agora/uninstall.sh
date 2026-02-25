#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'projectagora_option__htscript_url'
wp option delete 'projectagora_option__notify_support_consent'

