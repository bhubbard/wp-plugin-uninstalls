#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ss88_vestacp_widget_vesta_url'
wp option delete 'ss88_vestacp_widget_vesta_username'
wp option delete 'ss88_vestacp_widget_vesta_hash'
wp option delete 'ss88_vestacp_widget_vesta_verifyssl'

