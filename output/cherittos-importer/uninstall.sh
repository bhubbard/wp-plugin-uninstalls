#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cheritto-wordpress-importer-current-job'
wp option delete 'cheritto-wordpress-importer-current-job-path'
wp option delete 'cheritto-wordpress-importer-current-job-stage'
wp option delete 'cheritto-wordpress-importer-attachment-queue-lock'
wp option delete 'cheritto-wordpress-importer-attachment-queue-stage'
wp option delete 'cheritto-wordpress-importer-thumbnails-queue-lock'
wp option delete 'cheritto-wordpress-importer-thumbnails-queue-stage'

