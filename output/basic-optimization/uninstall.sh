#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'basic_optimization_disable_emoticons'
wp option delete 'basic_optimization_remove_shortlink'
wp option delete 'basic_optimization_remove_cssjs_ver'
wp option delete 'basic_optimization_remove_rsd_links'
wp option delete 'basic_optimization_disable_embed'
wp option delete 'basic_optimization_disable_xmlrpc'
wp option delete 'basic_optimization_remove_wlwmanifest_link'
wp option delete 'basic_optimization_disable_pingback'
wp option delete 'basic_optimization_hide_wp_version'
wp option delete 'basic_optimization_stop_heartbeat'
wp option delete 'basic_optimization_dequeue_dashicon'
wp option delete 'basic_optimization_installed'
wp option delete 'basic_optimization_version'

