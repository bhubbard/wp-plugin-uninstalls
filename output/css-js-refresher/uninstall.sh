#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cssjsr_clear_cache_wp_rocket'
wp option delete 'cssjsr_clear_cache_w3tc'
wp option delete 'cssjsr_clear_cache_litespeed'

