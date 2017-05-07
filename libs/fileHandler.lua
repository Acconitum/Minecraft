--#########################################################
-- writeFile
-- param: String file -> pathname
-- param: String message -> message to append
--########################################################

function writePath( file, message )
  local file = io.open( file, "a" )
  file:write( tostring( message .. "\n" ) )
  file:close()
end --writePath()


--#########################################################
-- getPath
-- param: file -> pathname
-- returns: table -> lines as key(int) value(string)
--          bool false -> file not found
--########################################################

function getFileContent( file )
  local returnTable = {}
  if io.open( file ) then
    local file = io.open( file, "r" )
    local v = 1
    for line in file:lines() do
      path[v] = line
      v = v + 1
    end
    file:close()
    return returnTable
  else
    file:close()
    debug.printInfo( file .. " : File not found" )
    return false
  end
end --getPath()


--#######################################################
-- resetPath
-- param: file -> pathname
-- returns: bool true if success
--########################################################

function resetPath( file)
  local file = io.open( file, "w" )
  file:close()
  return true
end --resetPath
