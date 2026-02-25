#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spinupwp_mail_notice_dismissed'
wp option delete 'spinupwp_redis_cache_disabled'
wp option delete 'spinupwp_redis_cache_disabled_notice_dismissed'

