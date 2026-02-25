#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'varnish_socket_timeout'
wp option delete 'varnish_control_terminal'
wp option delete 'varnish_version'
wp option delete 'varnish_control_key'
wp option delete 'purge_varnish_expire'
wp option delete 'purge_varnish_action'
wp option delete 'varnish_bantype'

