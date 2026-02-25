#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lon'
wp option delete 'lban_attachment_id'
wp option delete 'lurl'
wp option delete 'ron'
wp option delete 'rban_attachment_id'
wp option delete 'rurl'
wp option delete 'topoffset'
wp option delete 'bwidth'
wp option delete 'tab'
wp option delete 'mode'
wp option delete 'hideon'

