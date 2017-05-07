function log( message, shellOutput, errorLog )


  if shellOutput then
    print( tostring( message ) );
  end

  if errorLog then
    --TODO write to logfile
  end
end

function test( testbool = false )
  print( testbool )
end

function printTable( table )
  for k,v in pairs( table ) do print(k .. " : " .. v) end
end
