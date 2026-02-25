#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'openinviter_settings'
wp option delete 'openinviter_title'
wp option delete 'widget_inviter'

