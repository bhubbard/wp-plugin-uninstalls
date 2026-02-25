#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'googlereaderlogin'
wp option delete 'googlereadercachedir'
wp option delete 'googlereadercachelifetime'
wp option delete 'googleredercachelifetime'
wp option delete 'googlereaderpassword'

