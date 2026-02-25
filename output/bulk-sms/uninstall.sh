#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bulksms_admin_mobile'
wp option delete 'bulksms_gateway_domain'
wp option delete 'bulksms_username'
wp option delete 'bulksms_password'
wp option delete 'bulksms_sender'
wp option delete 'bulksms_send_visitor_msg'
wp option delete 'bulksms_visitor_message'
wp option delete 'bulksms_send_visitor_message'

