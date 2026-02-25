#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adminmobile'
wp option delete 'provider'
wp option delete 'username'
wp option delete 'password'
wp option delete 'sender'
wp option delete 'visitormsg'
wp option delete 'msg'

