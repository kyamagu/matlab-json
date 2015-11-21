function testAll
%TESTALL Run all tests.

  files = dir(fullfile('test', 'test*.m'));
  for i = 1:numel(files)
    fname = strrep(files(i).name, '.m', '');
    if ~strcmp(fname, 'testAll')
      fprintf('== %s ==\n', fname);
      feval(fname);
    end
  end

end

