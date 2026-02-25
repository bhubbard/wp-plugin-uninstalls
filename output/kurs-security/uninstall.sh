#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kurs_security_disable_rest_api'
wp option delete 'kurs_security_disable_rest_api_guests'
wp option delete 'kurs_security_disable_xmlrpc'
wp option delete 'kurs_security_disable_file_editor'
wp option delete 'kurs_security_redirect_failed_login'
wp option delete 'kurs_security_hide_wp_version'

