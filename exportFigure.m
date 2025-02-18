

function exportFigure(filename, width, height)

    fig = gcf;
    
    % Set the figure size
    set(fig, 'Units', 'pixel', 'Position', [1, 1, width, height]);

    % Export the figure

    exportgraphics(fig, filename, 'Resolution', 300, 'ContentType', 'image');
    

    disp(['Figure exported to ' filename ' with size ' num2str(width) 'x' num2str(height) ' inches.']);
end