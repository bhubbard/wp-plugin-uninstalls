#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%AccountHash'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%EnvId'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%PipeWebhookKey'"

