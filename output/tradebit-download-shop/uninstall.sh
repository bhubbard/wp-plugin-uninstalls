#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tbbitlogin'
wp option delete 'tbitpw'
wp option delete 'tbituid'
wp option delete 'tbitppal'
wp option delete 'tbitactive'

