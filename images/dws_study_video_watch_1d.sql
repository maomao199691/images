DROP TABLE IF EXISTS dws_study_video_watch_1d;
CREATE EXTERNAL TABLE dws_study_video_watch_1d
(
    `user_id`                   STRING COMMENT '用户id',
    `course_id`                    STRING COMMENT '课程id',
    `course_name`                  STRING COMMENT '课程名称',
    `subject_id`              STRING COMMENT '学科id',
    `capter_id`              STRING COMMENT '章节id',
    `capter_name`            STRING COMMENT '章节名称'
) COMMENT '学习域用户章节粒度观看视频1日汇总事实表'
    PARTITIONED BY (`dt` STRING)
    STORED AS ORC
    LOCATION '/warehouse/edu/dws/dws_study_video_watch_1d'
    TBLPROPERTIES ('orc.compress' = 'snappy');