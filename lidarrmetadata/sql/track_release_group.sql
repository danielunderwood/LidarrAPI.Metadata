SELECT
  track.id,
  track.gid,
  track.name,
  track.position,
  track.number,
  track.length,
  medium.position    AS medium_position,
  release.gid        AS release_id
FROM track
  JOIN medium ON track.medium = medium.id
  JOIN release ON medium.release = release.id
  JOIN release_group ON release_group.id = release.release_group
WHERE release_group.gid = %s
