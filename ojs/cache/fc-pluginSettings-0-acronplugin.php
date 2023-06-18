<?php return array (
  'crontab' => 
  array (
    0 => 
    array (
      'className' => 'plugins.generic.usageStats.UsageStatsLoader',
      'frequency' => 
      array (
        'hour' => 24,
      ),
      'args' => 
      array (
        0 => 'autoStage',
      ),
    ),
    1 => 
    array (
      'className' => 'plugins.generic.usageStats.UsageStatsLoader',
      'frequency' => 
      array (
        'hour' => 24,
      ),
      'args' => 
      array (
        0 => 'autoStage',
      ),
    ),
    2 => 
    array (
      'className' => 'plugins.importexport.crossref.CrossrefInfoSender',
      'frequency' => 
      array (
        'hour' => 24,
      ),
      'args' => 
      array (
      ),
    ),
    3 => 
    array (
      'className' => 'plugins.importexport.datacite.DataciteInfoSender',
      'frequency' => 
      array (
        'hour' => 24,
      ),
      'args' => 
      array (
      ),
    ),
    4 => 
    array (
      'className' => 'plugins.importexport.doaj.DOAJInfoSender',
      'frequency' => 
      array (
        'hour' => 24,
      ),
      'args' => 
      array (
      ),
    ),
    5 => 
    array (
      'className' => 'plugins.generic.usageStats.UsageStatsLoader',
      'frequency' => 
      array (
        'hour' => 24,
      ),
      'args' => 
      array (
        0 => 'autoStage',
      ),
    ),
    6 => 
    array (
      'className' => 'plugins.importexport.crossref.CrossrefInfoSender',
      'frequency' => 
      array (
        'hour' => 24,
      ),
      'args' => 
      array (
      ),
    ),
    7 => 
    array (
      'className' => 'plugins.importexport.datacite.DataciteInfoSender',
      'frequency' => 
      array (
        'hour' => 24,
      ),
      'args' => 
      array (
      ),
    ),
    8 => 
    array (
      'className' => 'plugins.importexport.doaj.DOAJInfoSender',
      'frequency' => 
      array (
        'hour' => 24,
      ),
      'args' => 
      array (
      ),
    ),
    9 => 
    array (
      'className' => 'plugins.generic.usageStats.UsageStatsLoader',
      'frequency' => 
      array (
        'hour' => 24,
      ),
      'args' => 
      array (
        0 => 'autoStage',
      ),
    ),
    10 => 
    array (
      'className' => 'plugins.importexport.crossref.CrossrefInfoSender',
      'frequency' => 
      array (
        'hour' => 24,
      ),
      'args' => 
      array (
      ),
    ),
    11 => 
    array (
      'className' => 'plugins.importexport.datacite.DataciteInfoSender',
      'frequency' => 
      array (
        'hour' => 24,
      ),
      'args' => 
      array (
      ),
    ),
    12 => 
    array (
      'className' => 'plugins.importexport.doaj.DOAJInfoSender',
      'frequency' => 
      array (
        'hour' => 24,
      ),
      'args' => 
      array (
      ),
    ),
    13 => 
    array (
      'className' => 'lib.pkp.classes.task.ReviewReminder',
      'frequency' => 
      array (
        'hour' => 24,
      ),
      'args' => 
      array (
      ),
    ),
    14 => 
    array (
      'className' => 'lib.pkp.classes.task.StatisticsReport',
      'frequency' => 
      array (
        'day' => '1',
      ),
      'args' => 
      array (
      ),
    ),
    15 => 
    array (
      'className' => 'classes.tasks.SubscriptionExpiryReminder',
      'frequency' => 
      array (
        'day' => '1',
      ),
      'args' => 
      array (
      ),
    ),
  ),
  'enabled' => true,
);