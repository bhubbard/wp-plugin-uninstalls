#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bb_minorderval_value'
wp option delete 'bb_minorderval_msg_cart'
wp option delete 'bb_minorderval_msg_checkout'

