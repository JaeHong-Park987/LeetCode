# Write your MySQL query statement below
SELECT
    ROUND((SELECT COUNT(player_id)
           FROM Activity
           WHERE (player_id,event_date) in(SELECT
                                            player_id,
                                            DATE(MIN(event_date) + 1)
                                            FROM Activity
                                            GROUP BY player_id)) / COUNT(DISTINCT(player_id)),2) AS fraction
FROM Activity
