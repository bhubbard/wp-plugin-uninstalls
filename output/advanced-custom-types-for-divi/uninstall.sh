#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'actd-general-settings'
wp option delete 'actd-post-type-settings'
wp option delete 'act_flush_rewrite_rules_flag'

