#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chc-textColor'
wp option delete 'chc-backgroundColor'
wp option delete 'chc-imgWidth'
wp option delete 'chc-imgHeight'
wp option delete 'chc-noiceLines'
wp option delete 'chc-noiceDots'
wp option delete 'chc-noiceColor'

