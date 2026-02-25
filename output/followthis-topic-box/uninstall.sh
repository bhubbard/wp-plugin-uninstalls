#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'followthis'
wp option delete 'ft_verifier'
wp option delete 'ft_meta_version'
wp option delete 'activated_plugin'
wp option delete 'ft_publisher_is_registered'
wp option delete 'ft_publisher_is_active'
wp option delete 'ft_publisher_is_approved'
wp option delete 'ft_publisher_info'
wp option delete 'ft_default_topics'

