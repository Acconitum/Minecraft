--#########################################################
-- writeFile
-- param: String path -> pathname
-- param: String message -> message to append
--########################################################

function writeFile( path, message )
  local file = io.open( path, "a" )
  file:write( tostring( message .. "\n" ) )
  file:close()
end --writeFile()


--#########################################################
-- getFileContent
-- param: path -> pathname
-- returns: table -> lines as key(int) value(string)
--          bool false -> file not found
--########################################################

function getFileContent( path )
  local content = {}
  if io.open( path ) then
    local file = io.open( path, "r" )
    local lineCounter = 1
    for line in file:lines() do
      content[lineCounter] = line
      lineCounter = lineCounter + 1
    end
    file:close()
    return content
  else
    file:close()
    --TODO errorlog
    return false
  end
end --getFileContent()


--#######################################################
-- resetFile
-- param: path -> pathname
-- returns: bool true if success
--########################################################

function resetPath( path )
  local file = io.open( path, "w" )
  file:close()
  return true
end --resetFile
