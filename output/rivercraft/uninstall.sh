#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'saltrc'
wp option delete 'iprc'
wp option delete 'portrc'
wp option delete 'userrc'
wp option delete 'pwdrc'

