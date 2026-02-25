#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lba_uid'
wp option delete 'lba_automatic'
wp option delete 'lba_automatic_add'

